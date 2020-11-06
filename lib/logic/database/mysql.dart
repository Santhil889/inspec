import 'package:mysql1/mysql1.dart';
/*
Hostname : DESKTOP-71260S0
user : root@localhost
port : 3306
db : tbl_inspectiondetails
*/

class MySQL{
  static String host="192.168.56.1";
  static String user="root";
  static String password="santhilks";
  static String db="incidentreport";
  static int port= 3306;

  MySQL();

  Future<MySqlConnection> getConnection() async {
    var settings= new ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: password,
      db: db,
    );
    return await MySqlConnection.connect(settings);
  }

}