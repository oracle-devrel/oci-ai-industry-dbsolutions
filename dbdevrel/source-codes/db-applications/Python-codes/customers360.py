import oracledb 

# database username and password  
username = "DEMOUSER"
user_pwd = "<Your-Password>"

# connection string copied from Lab 1, Task 5. or copy paste connection string from above step.
# oracledb.exceptions.OperationalError: DPY-6005: cannot connect to database (CONNECTION_ID=GfCDL1AKMXB51k6T6e1waQ==).
# DPY-6000: Listener refused connection. (Similar to ORA-12506)
tlsconnstr = """(description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.ap-mumbai-1.oraclecloud.com))(connect_data=(service_name=r9nvxxxxf7rhn_indeducation_high.adb.oraclecloud.com))(security=(ssl_server_dn_match=yes)))"""

connection = oracledb.connect(user=username, password=user_pwd, dsn=tlsconnstr)

with connection.cursor() as cursor:
      sql = """select * from customers360 where rownum < 10"""
      for r in cursor.execute(sql):
            print(r)
