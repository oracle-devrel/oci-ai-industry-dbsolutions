using System;
using Oracle.ManagedDataAccess.Client;

namespace ODP.NET_Core_Autonomous
{
      class Program
      {
            static void Main(string[] args)
            {  

                  string conString = "User Id=DEMOUSER;Password=<Your-Password>;Data Source=indeducation_high;Connection Timeout=30;";
                  using (OracleConnection con = new OracleConnection(conString))
                  {
                        using (OracleCommand cmd = con.CreateCommand())
                        {
                        try
                        {
                              //Enter directory where the tnsnames.ora and sqlnet.ora files are located
                              OracleConfiguration.TnsAdmin = @"/Wallets_welcome1/Wallet_IndEducation";  
                              //Enter directory where wallet is stored locally
                              OracleConfiguration.WalletLocation = @"/Wallets_welcome1/Wallet_IndEducation";
                              con.Open();
                              Console.WriteLine("Successfully connected to Oracle Autonomous Database");
                              cmd.CommandText = "select CUST_FIRST_NAME, CUST_LAST_NAME, CUST_CITY, CUST_CREDIT_LIMIT " +
                              "from customers360 order by CUST_ID fetch first 20 rows only";
                              OracleDataReader reader = cmd.ExecuteReader();
                              while (reader.Read())
                              Console.WriteLine(reader.GetString(0) + " " + reader.GetString(1) + " in " +
                              reader.GetString(2) + " has " + reader.GetInt16(3) + " in credit." );
                        }
                        catch (Exception ex)
                        {
                              Console.WriteLine(ex.Message);
                        }

                        Console.ReadLine();
                        }
                  }
            }
      }
}
