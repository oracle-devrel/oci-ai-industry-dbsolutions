    ```sql 
        <copy>
        -- Code Here
        </copy>
    ``` 
-------
SELECT t.id, t.inv_no, t.total_pay, trans_status, comments, latitude, longitude, customer_fullname, merchant_fullname, merchant_place, merchant_state, merchant_region, 
CREDIT_CARD_NO this_credit_card, 
LAG(CREDIT_CARD_NO) OVER (ORDER BY id) AS previous_card, 
MALL this_mall, 
LAG(MALL) OVER (ORDER BY id) AS previous_mall,  
to_char(TX_TIMESTAMP,'dd/mm/yyyy hh24:mi:ss') TX_TIMESTAMP,   
t.TX_TIMESTAMP - LAG(t.TX_TIMESTAMP) OVER (ORDER BY t.TX_TIMESTAMP) AS time_difference,
to_char(TX_TIMESTAMP,'yyyymmddHH24MISS') - LAG(to_char(TX_TIMESTAMP,'yyyymmddHH24MISS')) OVER (ORDER BY to_char(TX_TIMESTAMP,'yyyymmddHH24MISS')) AS time_diff_number 
FROM RETAIL_SHOPPING_FD t 
where merchant_state != 'United States of America' AND TX_TYPE = 'ML'
order by id  desc
-------

WITH query as (
    -- source and target constitutes the edge direction and thus 
    select 
    SRC_ACCT_ID as source , 
    DST_ACCT_ID as target  
    from BANK_TRANSFERS where DESCRIPTION = 'ML'  
),
page AS (
    -- pagination
    SELECT
        *
    FROM
        query
    ORDER BY
        source,
        target OFFSET :page_start ROWS FETCH NEXT :page_size ROWS ONLY 
),
vertices AS (
    -- fetch customer details and construct JSON
    SELECT
        JSON_OBJECT(
            --'id' VALUE FINBANK_ACCOUNTS.ID,
            'id' VALUE FINBANK_ACCOUNTS.ID,
            'properties' VALUE JSON_OBJECT(
                'FirstName' VALUE FINBANK_ACCOUNTS.FIRST_NAME,
                'LastName' VALUE FINBANK_ACCOUNTS.LAST_NAME, 
                'Department' VALUE FINBANK_ACCOUNTS.DEPARTMENT_ID,
                'Date' VALUE FINBANK_ACCOUNTS.ACC_DATE,
                'TID' VALUE FINBANK_ACCOUNTS.JOB_ID,
                'Title' VALUE jobs.JOB_TITLE,
                'Amount' VALUE bank_transfers.Amount 
            )
        ) AS vertex
    FROM 
        FINBANK_ACCOUNTS finbank_accounts 
        LEFT OUTER JOIN FD_JOBS jobs ON finbank_accounts.JOB_ID = jobs.JOB_ID
        LEFT OUTER JOIN BANK_TRANSFERS bank_transfers ON finbank_accounts.ID = bank_transfers.SRC_ACCT_ID   
    WHERE 
        bank_transfers.SRC_ACCT_ID in (
            SELECT
                source
            from
                page
        )
        or bank_transfers.DST_ACCT_ID in (
            SELECT
                target
            from
                page
        )

),
edges AS ( 
    SELECT
        JSON_OBJECT('source' VALUE source, 'target' VALUE target) AS edge
    FROM
        page
)
SELECT 
    JSON_OBJECT(
        'vertices' VALUE (
            SELECT
                JSON_ARRAYAGG(vertex returning clob)
            FROM
                vertices
        ),
        'edges' VALUE (
            SELECT
                JSON_ARRAYAGG(edge returning clob)
            FROM
                edges
        ),
        'numResults' VALUE (
            SELECT
                COUNT(*)
            FROM
                query
        ) returning clob
    ) json
FROM
    SYS.DUAL

----- Settings --------

{
    "evolution": {
        "granularity": 500,
        "vertex": "properties.Amount"
    }
}

----- Styles ---------
{
    "vertex": {
        "size": 12,
        "label": "${properties.FirstName} ${properties.LastName}",
        "color": "${interpolate.discrete('properties.TID', 'blue', 'green', 'red', '#244f54', '#449287', '#62b3b7', '#ffda40', '#dda831', '#e96e4c', '#e8b4af', '#b3b3b3', '#333333')}",
        "icon": "fa-user",
        "legend": "${properties.Title}",
        "children": {
            "salary": {
                "size": 8,
                "color": "${interpolate.color('properties.Amount', 'white', '#FB8500')}",
                "icon": {
                    "class": "fa-money",
                    "color": "black"
                },
                "border": {
                    "width": 1,
                    "color": "#FB8500"
                }
            }
        }
    },
    "vertex[!!properties.Country]": {
        "children": {
            "flag": {
                "size": 10,
                "image": {
                    "url": "https://flagcdn.com/40x30/${(properties.Country === 'UK' ? 'GB' : properties.Country).toLowerCase()}.png",
                    "scale": 0.8
                }
            }
        }
    },
    "vertex[['VP', 'SWISS BANK', 'FI_MGR', 'AC_MGR', 'SA_MAN', 'PU_MAN', 'ST_MAN'].indexOf(properties.TID) >= 0]": {
        "icon": "fa-university"
    }
}
 
-------------- BANK_TRANSFERS Table -----------------
  CREATE TABLE "BANK_TRANSFERS" 
   (	"TXN_ID" NUMBER, 
	"SRC_ACCT_ID" NUMBER, 
	"DST_ACCT_ID" NUMBER, 
	"DESCRIPTION" VARCHAR2(400), 
	"AMOUNT" NUMBER, 
	"PROFILE" VARCHAR2(20), 
	"INV_NO" VARCHAR2(50), 
	"MERCHANT_REGION" VARCHAR2(100), 
	"MERCHANT_STATE" VARCHAR2(100), 
	"MERCHANT_PLACE" VARCHAR2(100), 
	 PRIMARY KEY ("TXN_ID")
  USING INDEX  ENABLE
   ) ;

  ALTER TABLE "BANK_TRANSFERS" ADD FOREIGN KEY ("SRC_ACCT_ID")
	  REFERENCES "BANK_ACCOUNTS" ("ID") ENABLE;
  ALTER TABLE "BANK_TRANSFERS" ADD FOREIGN KEY ("DST_ACCT_ID")
	  REFERENCES "BANK_ACCOUNTS" ("ID") ENABLE;

-------------- FINBANK_ACCOUNTS Table ---------------
  CREATE TABLE "FINBANK_ACCOUNTS" 
   (	
    "ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 999999999 
    INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,  
	"ACC_ID" NUMBER, 
	"FIRST_NAME" VARCHAR2(100), 
	"LAST_NAME" VARCHAR2(100), 
	"PHONE_NUMBER" VARCHAR2(50), 
	"ACC_DATE" DATE, 
	"JOB_ID" VARCHAR2(50), 
	"MANAGER_ID" NUMBER, 
	"DEPARTMENT_ID" NUMBER, 
	"IS_FRAUD" VARCHAR2(50), 
	"PROFILE" VARCHAR2(20), 
	"FULL_NAME" VARCHAR2(60), 
	"GENDER" VARCHAR2(20), 
	"AGE" NUMBER, 
	 PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   ) ;

---- EBA_GRAPHVIZ_JOBS ----------  FD_JOBS

  CREATE TABLE "FD_JOBS" 
   (	
    "JOB_ID" VARCHAR2(10), 
	"JOB_TITLE" VARCHAR2(35) CONSTRAINT "FD_JOB_TITLE_NN" NOT NULL ENABLE, 
	"MIN_SALARY" NUMBER(6,0), 
	"MAX_SALARY" NUMBER(6,0), 
	 CONSTRAINT "FD_JOBS_ID_PK" PRIMARY KEY ("JOB_ID")
  USING INDEX  ENABLE
   ) ;

----- CC_FD Table ------------

INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('AD_PRES','President',20000,40000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('AD_VP','Administration Vice President',15000,30000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('AD_ASST','Administration Assistant',3000,6000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('FI_MGR','Finance Manager',8200,16000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('FI_ACCOUNT','Accountant',4200,9000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('AC_MGR','Accounting Manager',8200,16000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('AC_ACCOUNT','Public Accountant',4200,9000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('SA_MAN','Sales Manager',10000,20000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('SA_REP','Sales Representative',6000,12000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('PU_MAN','Purchasing Manager',8000,15000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('PU_CLERK','Purchasing Clerk',2500,5500);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('ST_MAN','Stock Manager',5500,8500);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('ST_CLERK','Stock Clerk',2000,5000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('SH_CLERK','Shipping Clerk',2500,5500);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('IT_PROG','Programmer',4000,10000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('MK_MAN','Marketing Manager',9000,15000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('MK_REP','Marketing Representative',4000,9000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('HR_REP','Human Resources Representative',4000,9000);
INSERT INTO FD_JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY) VALUES ('PR_REP','Public Relations Representative',4500,10500);

----- Generate transactions -------------

declare    
v_records number := 25;
v_MERCHANT_REGION RETAIL_SHOPPING_FD.MERCHANT_REGION%TYPE := 'Europe and North America';
v_MERCHANT_STATE RETAIL_SHOPPING_FD.MERCHANT_STATE%TYPE := 'United States of America';

v2_MERCHANT_REGION   RETAIL_SHOPPING_FD.MERCHANT_REGION%TYPE;
v2_MERCHANT_STATE   RETAIL_SHOPPING_FD.MERCHANT_STATE%TYPE;  

begin 

   if v_records > 0 then 
   ------- clean data before insert --------
    delete from BANK_TRANSFERS WHERE DESCRIPTION = 'ML'; 
    delete from RETAIL_SHOPPING_FD WHERE TX_TYPE = 'ML';
    ------ clean data before insert --------
   
    FOR a in 1 .. v_records LOOP  
      FD_TX_INSERTS_ML (v_MERCHANT_REGION,  v_MERCHANT_STATE);
    END LOOP; 
  
     FOR a in 1 .. 5 LOOP   
      select    REGION_EN, STATES_NAME_EN into   v2_MERCHANT_REGION, v2_MERCHANT_STATE
        from (select ID, NAME_EN, LONGITUDE, LATITUDE,  REGION_EN, STATES_NAME_EN  from UNESCO_SITES   ORDER BY DBMS_RANDOM.RANDOM) WHERE  rownum < 2;  
      FD_TX_INSERTS_ML (v2_MERCHANT_REGION,  v2_MERCHANT_STATE);
    END LOOP;

   end if;
end;
 

