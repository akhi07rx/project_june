import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //database creation
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('datauser.db', version: 1,
        onCreate: (sql.Database database, int version) async {
          await createTable(database);
        });
  }

  static createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE user(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        email TEXT,
        password TEXT,
      )""");
  }

  static Future<int>newuser(String name, String email, String password) async{
    final db = await SQLHelper.OpenDb();
    final data = {'name': name, 'email': email, 'password': password};
    final id = db.insert('user', data);
    return id;
  }

  static Future<List<Map>> logincheck(String email, String password) async {
    final db = await SQLHelper.OpenDb();
    final data = await db.rawQuery("SELECT * FROM user WHERE email= '$email' AND password = '$password' ");
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }

}

