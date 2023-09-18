import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //database creation
  static Future<sql.Database> CreateDb() async {
    return sql.openDatabase('datauser.db', version: 1,
        onCreate: (sql.Database database, int version) async {
          await createTable(database);
        });
  }

  static createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE user(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        mail TEXT,
        pass TEXT,
      )""");
  }

  static Future<int>newuser(String name, String email, String password) async{
    final db = await SQLHelper.CreateDb();
    final data = {'name': name, 'email': email, 'pass': password};
    final id = db.insert('user', data);
    return id;
  }

  static Future<List<Map<String, Object?>>>logincheck(String email, String password) async {
    final db= await SQLHelper.CreateDb();
    final data=db.rawQuery("SELECT * FROM user WHERE email= '$email' AND password ='$password' ");
    print(data.toString());
    if(data.isNotEmpty)
      {
        return data;
      }
    return data;
  }
}

