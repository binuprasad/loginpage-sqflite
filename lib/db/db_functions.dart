import 'package:sqflite/sqflite.dart';

late Database db;

Future<void> initDatabase() async {
  db = await openDatabase(
    'user_db',
    version: 1,
    onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE people(id INTEGER PRIMARY KEY,password INTEGER,name TEXT,phone INTEGER,email TEXT,address TEXT)');
    },
  );
}

