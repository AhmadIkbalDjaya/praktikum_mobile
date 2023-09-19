import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'model/person.dart';

class DbHelper{
  static Database? _database;
  
  Future<Database> initDB() async {
    return openDatabase(
      join(await getDatabasesPath(), 'pertemuan-6.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE person (NIK TEXT PRIMARY KEY, name TEXT, umur INTEGER, hasMarried Boolean, gender TEXT)'
        );
      },
      version: 1,
    );
  }

  Future<Database?> get database async {
    _database ??= await initDB();
    return _database;
  }
  
  Future<void> insertPerson(Person person) async{
    final db = await database;
    await db!.insert(
      'person',
      person.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

  // var personPertama = Person(NIK: "0706129912", name: "Ali", umur: 22, hasMarried: false, gender: "Laki-Laki")
  // await insertPerson(personPertama);

  Future<List<Person>> getAllPerson() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db!.query("person");

    return List.generate(maps.length,
      (index) {
        return Person(
          NIK: maps[index]['NIK'],
          name: maps[index]['name'],
          umur: maps[index]['umur'],
          hasMarried: maps[index]['hasMarried'],
          gender: maps[index]['gender']
        );
      },
    );
  }
}

extension ParserBoolean on bool {
  int parseInt(){
    if(this){
      return 1;
    } 
    return 0;
  }
}

extension ParserInt on int {
  String parseToHasMarried(){
    if(this == 1){
      return "Sudah Menikah";
    }
    return "Belum Menikah";
  }
}