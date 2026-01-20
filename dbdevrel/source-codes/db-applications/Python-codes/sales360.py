import oracledb   

# database username and password 
username = "DEMOUSER"
user_pwd = "<Your-Password>"

# for example
# username = "demouser"
# user_pwd = "Welcome1234#"

# directory containing the ewallet.pem and tnsnames.ora  
#wall_config_dir = "/<path_to_config_folder_mywalletfiles>"

# for example here mywalletfiles folder contains extracted zip file
wall_config_dir = "/Wallets_welcome1/Wallet_IndEducation"

# wallet password 
#wall_pwd = "<wallet_password>"
wall_pwd = "<Your-Password>"

# connection string name for example demoadw_high
# please check tnsnames.ora file in your database wallet to get tns_name 
# or refer Lab 1 for more details

#tns_name = "<connectionname>"
tns_name = "indeducation_high"

# for example
# tns_name = "adbdw110612_high"

connection = oracledb.connect(user=username, 
                              password=user_pwd,
                              dsn=tns_name,
                              config_dir=wall_config_dir,
                              wallet_location=wall_config_dir,
                              wallet_password=wall_pwd)

with connection.cursor() as cursor:
      sql = """select * from sales360 where rownum < 10"""
      for r in cursor.execute(sql):
            print(r)
