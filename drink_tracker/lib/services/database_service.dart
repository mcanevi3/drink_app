// services/database_service.dart
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CoffeeService {
  static final CoffeeService _instance = CoffeeService._internal();
  factory CoffeeService() => _instance;
  CoffeeService._internal();

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'app.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        final sqlScript = await rootBundle.loadString('assets/sql/coffee_table.sql');
        final statements = sqlScript
            .split(';')
            .map((stmt) => stmt.trim())
            .where((stmt) => stmt.isNotEmpty);
        for (var stmt in statements) {
          await db.execute(stmt);
        }
      },
    );
  }

  Future<int> insert(String table, Map<String, dynamic> data) async {
    final db = await database;
    return await db.insert(table, data);
  }

  Future<List<Map<String, dynamic>>> getAll(String table) async {
    final db = await database;
    return await db.query(table);
  }

  Future<int> delete(String table, int id) async {
    final db = await database;
    return await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }

  // Add update method if needed
}
