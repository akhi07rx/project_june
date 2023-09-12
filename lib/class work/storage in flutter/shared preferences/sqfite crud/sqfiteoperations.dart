import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //database creation
  static Future<sql.Database> createDB() async {
    return sql.openDatabase('mycontacts.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }




  //table for storing values in this db
  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    cname TEXT,
    cnumber TEXT,
    )""");
  }

  // save name and phone number to contacts table
  static Future<int> create_contact(String name, String phonenum) async {
    final db = await SQLHelper.createDB(); // open database
    final data = {'cname': name, 'cnumber': phonenum};
    //         insert to a particular table with values as map
    final id = await db.insert('contacts', data);
    return id;
  }

  //fetch or read all the contacts from db
  static Future<List<Map<String, dynamic>>> readContacts() async {
    final db = await SQLHelper.createDB();
    //read all the values from db
    return db.query('contacts', orderBy: 'id');
  }
}
