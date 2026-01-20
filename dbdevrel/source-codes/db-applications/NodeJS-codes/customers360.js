const oracledb = require("oracledb");
const fs = require("fs");

// On Windows and macOS, you can specify the directory containing the Oracle
// Client Libraries at runtime, or before Node.js starts.  On other platforms
// the system library search path must always be set before Node.js is started.
// See the node-oracledb installation documentation.
// If the search path is not correct, you will get a DPI-1047 error.

// let libPath; 
// for example you can use environment variable as shown below 
// if (process.platform === "win32") {
//    Windows
//      libPath = "C:\\oracle\\instantclient_19_8";
//} else if (process.platform === "darwin") {
//       macOS
//      libPath = process.env.HOME + "/Downloads/instantclient_19_8";
//} 

// or directly provide the libpath
// replace with your instant client path, please use latest version of instant client  
// libPath =  "/Users/username/Workarea/Polyglot/instantclient_19_8"; 
//if (libPath && fs.existsSync(libPath)) {
//oracledb.initOracleClient({
//      libDir: libPath
//});
//}

// Example connectionString for _high connection
// "(description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.sa-saopaulo-1.oraclecloud.com))(connect_data=(service_name=hmugvwhgda3dbym_adbdw110612_high.adb.oraclecloud.com))(security=(ssl_server_dn_match=yes)))"

async function run() {
      let connection;

      try {
            connection = await oracledb.getConnection({
                  user: "DEMOUSER",
                  password: "<Your-Password>",
                  connectionString: "(description= (retry_count=20)(retry_delay=3)(address=(protocol=tcps)(port=1522)(host=adb.ap-mumbai-1.oraclecloud.com))(connect_data=(service_name=r9nvxxxrhn_indeducation_high.adb.oraclecloud.com))(security=(ssl_server_dn_match=yes)))",
            });

            console.log("Connected to DB and select from customers360 table");

            result = await connection.execute(
                  "select * from customers360 where rownum < 10",
                  [], {
                  resultSet: true,
                  outFormat: oracledb.OUT_FORMAT_OBJECT
                  }
            );

            const rs = result.resultSet;

            let row;
            while ((row = await rs.getRow())) {
                  console.log(row);
            }
            await rs.close(); 

      } catch (err) {

            console.error(err);

      } finally {

            if (connection) {
                  try {
                  await connection.close();
                  } catch (err) {
                  console.error(err);
                  }
            }
      }
}

run();
