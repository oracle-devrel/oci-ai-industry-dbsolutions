# Provision an Oracle Autonomous AI Database  

## Introduction
 
Autonomous AI Database for Developers provides you with low cost instances for developers and others to build and test new Autonomous AI Database applications.
 
Autonomous AI Database for Developers are low-cost, fixed shape databases intended for development and testing uses cases, and are not recommended for production use cases. When you need more compute or storage resources or you want to take advantage of additional Autonomous AI Database features, you can upgrade your Autonomous AI Database for Developers instance to a full paid service instance.

With Oracle Autonomous AI Database you can work on many tools such as 

* Oracle APEX
* Database Actions
* Graph Studio
* Oracle Machine Learning user interface
* Data Transforms
* Web Access (ORDS)
* MongoDB API 
* Data Lake Accelerator  
* SODA Drivers

This lab walks you through the steps to get started using the Oracle Autonomous Database on Oracle Cloud. You will provision a new Autonomous Data Warehouse instance.  

[Terraform source code download](https://github.com/madhusudhanrao-ppm/dbdevrel/tree/main/source-codes/create-adb-terraform)

[Application source code download](https://github.com/madhusudhanrao-ppm/dbdevrel/tree/main/source-codes/db-applications)

Estimated Time: 20 minutes

[Demo video on Create Oracle Autonomous AI Database](youtube:V2PETW_F7XI:large) 

### Objectives

In this lab, you will:

-   Learn how to provision a new Autonomous Database

### Prerequisites

- This lab requires completing the **Get Started** section in the contents menu on the left navigation.
- Log in to the Oracle cloud and have access to create an Autonomous Database.


## Task 1: Create an Oracle Resource Manager Stack

1. Create an Autonomous AI Database using the Resource Manager Stack.

    > Please Note: Billing for Autonomous AI Database for Developers databases is hourly per instance. please see more info section

2. Log in to https://cloud.oracle.com from the top left navigation select **Developer Services** and **Stacks** under **Resource Manager**

    ![Navigation](images/01-navigation.png )
    
3. Click on the **Create Stack** button. Upload the .zip file 

    ![Create Stack](images/02-createstack.png )

4. Provide the Stack Information. You can also accept the default values provided. Ensure that you select the right compartment, click **Next** button and verify the configuration variables, change the password as you prefer.
    
5. Ensure that the compartment id is correct, and click **Next** button.

    ![Navigation](images/03-schema.png  )

6. Review Stack Information. Check on **Run apply** and **Create** button. 

    ![Apply](images/04-apply.png )
    
    This will create ORM (Oracle Resource Manager) Job.

    ![ORM Job](images/05-orm.png )

7. View the logs. 

    ![Logs](images/06-logs.png )

8. Our AI Database is now created in 1 minute and 15 seconds.  

    ![Logs](images/07-logs.png ) 
        
    > Please Note: Sometimes the time to create might slightly change to 2 and a half mins depending on the region and/or internet speed. 
    
    ORM Job Success message

    ![ORM](images/08-orm.png )
    
## Task 2: View Oracle Autonomous AI Database and Developer Tools

1.   From the left navigation, select **Oracle AI Database** and **Oracle Autonomous AI Database**
    
    ![ADB view](images/11-adb2.png )
    
    
2. View the newly created Oracle Autonomous AI Database, with the Developer tag on the right side of the name.

    ![ADB](images/10-adb.png  )
    
    Click on the link, which will show all the enabled features and Tools

    ![Tools](images/12-alloptions.png  ) 

    * Oracle APEX
    * Database Actions
    * Graph Studio
    * Oracle Machine Learning user interface
    * Data Transforms
    * Web Access (ORDS)
    * MongoDB API 
    * Data Lake Accelerator  
    * SODA Drivers

3. Copy the link and open the required tools.

    ![SQL](images/13-sql.png  )
     
    From the database actions menu, select View all database actions or select **SQL**

    ![SQL Run](images/14-sql2.png )
    
    In the **SQL Worksheet**, you can see the default **SH Schema** already pre-created, You can start using this worksheet with an example SQL
    
    ```
    SELECT * from SH.COUNTRIES
    ```
    
    Clean up the created resources by going back to the Resource Manager Stack and clicking on the **Destroy** button.
    
    Click on the Destroy confirmation button.


## Task 3: (Optional) Create Oracle Autonomous AI Database for Developers using Oracle Terraform Command Line Interface CLI

1. Install Terraform CLI, Please check this link on [Terraform CLI Installation for OCI](https://developer.hashicorp.com/terraform/tutorials/oci-get-started/install-cli) 

    ```
    % brew tap hashicorp/tap
    % brew install hashicorp/tap/terraform

    -- Verify installation
    % terraform -help

    % terraform -v   
    Terraform v1.13.4
    on darwin_amd64
    ```

2. Install OCI CLI, Please refer the [Quick start guide] (https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)

    ```
    % brew update && brew install oci-cli

    -- Verify installation
    % oci -v
    3.62.1
    ```
 
3. Configure OCI CLI, Please check [CLI configuration](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliconfigure.htm) document

    replace  <Your-User-OCID\> , <Your-OCI-Finterprint\>, <Your-Region\> for example us-phoenix-1, <Your-key-file\> Your SSH Key file with complete path

    ```
    % cat ~/.oci/config                                                                                         
    [DEFAULT]
    user=ocid1.user.oc1..<Your-User-OCID>
    fingerprint=<Your-OCI-Finterprint>
    tenancy=ocid1.tenancy.oc1..<Your-Tenancy-OCID> 
    region=<Your-Region>
    key_file=/Users/<Your-Folder>/<Your-key-file>.pem 
    ```  

4. View and Edit the Terraform source code main.tf by replacing <Your-Compartment-Id\>, <Your-DB-Name\>, <Your-DB-Display-Name\> and <Your-Password\> as appropriate for your tenancy and database creation

    ```
    provider "oci" {}

    resource "oci_database_autonomous_database" "oci_database_autonomous_database" { 
        autonomous_maintenance_schedule_type = "REGULAR"
        compartment_id = "<Your-Compartment-Id>"
        compute_count = "4"
        compute_model = "ECPU"
        data_storage_size_in_gb = "20"
        db_name = "<Your-DB-Name>"
        display_name = "<Your-DB-Display-Name>"
        admin_password = "<Your-Password>"
        db_version = "26ai"
        db_workload = "LH" 
        is_dedicated = "false"
        is_dev_tier = "true"
        is_mtls_connection_required = "true"
        is_preview_version_with_service_terms_accepted = "false"
        license_model = "LICENSE_INCLUDED"
    }            
    ```

    Refer [OCI CLI Terraform for Database Creation](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/database_autonomous_database)
           
5. Start with Terraform initialisation
 
    ```
    terraform init
    ``` 

    ![Plan](images/17-tfplan.png )

    ```
    terraform plan -out=myplan.tfplan
    ```

    ![Apply](images/18-tfapply.png )

    ```
    terraform apply "myplan.tfplan"
    ```

    ![Logs](images/19-tfviewlogs.png )

    The script has completed resource creation in approximately 3 minutes. Once you have completed using the Oracle Autonomous AI Database 26ai environment. You can destroy the environment
  
    > Please note: This approach will be slightly slower than running it through the Oracle resource manager stack zip file upload. as you are connecting from your local laptop to OCI using using terraform command line interface.
  
## Task 4: (Optional) Download database wallet, Note connection details and Create database user

1. From the top right navigation menu click on **Database Connection** button

    ![DB Conn](images/db-conn.png  )

2. Download wallet and Copy connection details. 

    ![Wallet](images/copy-connection.png  ) 

    Provide wallet password and save the wallet.

3. Copy and save TNS Name, which would be of the following format, where database name and region will change. we will need this details for database connection. 

    ```
    devdbhs556l_high = (description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.us-phoenix-1.oraclecloud.com))(connect_data=(service_name=wkrfs4xeqva1jcu_devdbhs556l_high.adb.oraclecloud.com))(security=(ssl_server_dn_match=yes)))
    ```

    <!-- ```
    devdbhs7g6l_high = (description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.us-phoenix-1.oraclecloud.com))(connect_data=(service_name=wkrfs4xeqva1jcu_devdbhs7g6l_high.adb.oraclecloud.com))(security=(ssl_server_dn_match=yes)))

    DEMOUSER/Welcome123456#
    ``` -->

4. Create Database user by clicking on **Database Actions** Menu and **Database Users**

    ![Create User](images/create-user.png  )

    Click on create user button 

    ![Create User2](images/create-user2.png  )

    Provide user name and password and select user options

    ![Destroy](images/user-options.png  )
  
5.  Update **Granted Roles** as required by your application and **Apply Changes** . 
  
    ![Destroy](images/role-grants.png  )

  
## Task 5: Create a database user and tables

1. You can also use **SQL Worksheet** to create user.
2. Let us create a new database user and a couple of tables using the sample SH schema. SH schema is pre-installed with default instance creation.  

    Click the **Database Actions** button.
  
    ![database actions](images/db-actions-00.png "database actions")

    Select the **SQL** tab to open the **SQL worksheet**.
  
2. Create an Autonomous Database user <db\_user\> and grant required privileges to create tables. Copy-paste the code below into the SQL worksheet.

    ```
    <copy>    
    define USERNAME = <db_user>;   
    create user &USERNAME identified by "<password>";
    alter user &USERNAME
        default tablespace users
        temporary tablespace temp
        quota unlimited on users;
    grant create session,
        create view,
        create sequence,
        create procedure,
        create table,
        create trigger,
        create type,
        create materialized view
        to &USERNAME;
    create table &USERNAME.sales360 as (select * from sh.sales);
    create table &USERNAME.customers360 as (select * from sh.customers);
    </copy>
    ```

    Substitute <db\_user\> and <password\> with the username and password of your choice. Press the green button to run the script.

    ![sql worksheet](images/app-user.png  "sql worksheet")

3. (Optional) Install **VS Code** and **SQL Developer** Extension, Create a new Connection as shown below. Provide database username, password, select connection type as **Cloud Wallet** upload wallet file.

    ![Create Connection](images/create-conn.png "Create Connection")

    Create a new **SQL Worksheet** and run the following

    ```
    create table sales360 as (select * from sh.sales);
    create table customers360 as (select * from sh.customers);
    ```

## Task 6: (Optional) One-way TLS connection to Oracle Autonomous Database for wallet-less connections  

> **Note:**  This Task is required if you plan to use a wallet-less connection with Autonomous Database using Python or . NET. Otherwise, you can still connect to Autonomous Database using the wallet downloaded in the previous Task.

1. One-way TLS connection to Oracle Autonomous Database

    Complete the following steps in an Oracle Cloud console in the Autonomous Database Information section of the ADB instance details:

    Click the **Edit** link next to **Access Control List** to update the Access Control List (ACL).  
     
    The **Edit Access Control List** dialog box is displayed. select the type of address list entries and the corresponding values. You can include the required IP addresses, hostnames, or Virtual Cloud Networks (VCNs). The ACL limits access to only the IP addresses or VCNs that have been defined and blocks all other incoming traffic.  

    ![access control list](images/add-acl.png =75%x*  "access control list")   

    You should be able to establish a connection with the database by just clicking on **Add My IP Address** button. If you have issues establishing a connection, please follow the instructions below to get the IP address.

      > **Windows:**
      To get your public IP address:  
      1. Open the command prompt and run *ipconfig /all*.
      2. Search for 'IPv4 address:' under 'Wifi' or 'EthernetX' section based on your current network adapter to get the IP address.

      > **macOS:**
      To get your public IP address:  
      1. From the Apple menu, select System Preferences. In *System Preferences*, select *Network* from the View menu.
      2. In the Network window, select a network port (e.g., AirPort, Ethernet, Wi-Fi). The IP address will be visible under "Status:" section if it is connected.

      > **Linux/UNIX:**
      To get your public IP address:
      1. Run *ifconfig*.
      2. This command displays a list of all the network interfaces available on the machine. Look for the appropriate network interface (e.g., ens3 in Oracle Linux), and you will see an "inet" section under this containing your IP address.

    In the **Autonomous Database Information** tab and click the **Edit** link next to **Mutual TLS (mTLS) Authentication**. The Edit Mutual TLS Authentication dialog is displayed.   

    In the **Edit Mutual TLS Authentication** dialog box, **un-check** the **Require mutual TLS (mTLS) authentication** checkbox  and click **Save Changes**.

    ![access type](images/edit-mtls.png =50%x*  "access type")

    After update

    ![access type](images/edit-mtls2.png =50%x*  "access type")

    In the **Autonomous Database Information** page and click **DB Connection** on the top of the page. A **Database Connection** dialog box is displayed.
    In the **Database Connection** dialog box, select **TLS** under **TLS Authentication** drop-down list.
  
    The connection string will look like this.

    ```
    <copy>
        (description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1521)
        (host=adb.<region_identifier>.oraclecloud.com))
        (connect_data=(service_name=<service_prefix>.adb.oraclecloud.com))
        (security=(ssl_server_dn_match=yes)
        (ssl_server_cert_dn="CN=<cn name>, OU=Oracle BMCS US, O=Oracle Corporation, L=Redwood City, ST=California, C=US")))
    </copy>
    ```  

    Copy the appropriate Connection String of the database instance in a text file which can be used by your applications. The  <region\_identifier\> and <service\_prefix\> will change depending on your ADB environment and the cloud region that you have selected.

    > **Note:** Please select **TLS** in the **TLS Authentication** dropdown while copying the connection string.  
 
## Task 7: Cleanup resources created

1. Destroy the resources created if you have used using Oracle Stack by clicking on the  **Destroy** button.
 
    ![Destroy](images/15-destroy.png  )

    View Confirmation message logs

    ![Confirm](images/16-destroyconfirm.png )

2. If you have used Terraform CLI then run 

    ```
    terraform destroy
    ```

    ![Destroy](images/20-destroy.png ) 
 
    -- Enter yes for confirmation 
  
You may now **proceed to the next lab**.

## Learn more

* [FAQs For Autonomous Database](https://www.oracle.com/database/technologies/datawarehouse-bigdata/adb-faqs.html)
* [What Is an Autonomous Database?](https://www.oracle.com/autonomous-database/what-is-autonomous-database/)
* Go to [the documentation](https://docs.oracle.com/en/cloud/paas/autonomous-data-warehouse-cloud/user/autonomous-workflow.html#GUID-5780368D-6D40-475C-8DEB-DBA14BA675C3) on the typical workflow for using Autonomous Data Warehouse.
* [About Connecting to an Autonomous Database Instance](https://docs.oracle.com/en/cloud/paas/autonomous-database/adbsa/connect-introduction.html)
* [Update Network Options to Allow TLS or Require Only Mutual TLS (mTLS) Authentication on Autonomous Database](https://docs.oracle.com/en/cloud/paas/autonomous-database/adbsa/support-tls-mtls-authentication.html#GUID-3F3F1FA4-DD7D-4211-A1D3-A74ED35C0AF5)
* [Securely Connecting to Autonomous DB Without a Wallet (Using TLS)](https://blogs.oracle.com/developers/post/securely-connecting-to-autonomous-db-without-a-wallet-using-tls)
* [Default password complexity rules](https://docs.oracle.com/en/cloud/paas/autonomous-database/dedicated/adbcu/#ADBCU-GUID-0E019845-31AE-44D7-B55C-9BCBA7E1377F)

## Acknowledgements

- **Author** - Madhusudhan Rao, Principal Product Manager, Database  
- **Last Updated By/Date** - Madhusudhan Rao, 4th Oct 2024
