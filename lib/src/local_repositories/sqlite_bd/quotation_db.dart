import 'package:multifast/src/local_repositories/sqlite_bd/fastcloud_db.dart';
import 'package:multifast/src/models/sqlite/quotation_sql.dart';
import 'package:sqflite/sqflite.dart';

class QuotationDb {
  Future<int> insertQuotation(QuotationSql quotation) async {
    final db = await FastCloudDb.instance.database;
    return await db.insert(
      'quotation',
      quotation.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> updateQuotation(QuotationSql quotation) async {
    final db = await FastCloudDb.instance.database;
    return await db.update(
      'quotation',
      quotation.toJson(),
      where: 'quotationId = ?',
      whereArgs: [quotation.quotationId],
    );
  }

  Future<int> deleteQuotation(int id) async {
    final db = await FastCloudDb.instance.database;
    return await db.delete(
      'quotation',
      where: 'quotationId = ?',
      whereArgs: [id],
    );
  }

  Future<List<QuotationSql>> getAllQuotations() async {
    final db = await FastCloudDb.instance.database;
    final List<Map<String, dynamic>> maps = await db.query('quotation', orderBy: 'numberQuotation DESC');

    return List.generate(maps.length, (i) {
      return QuotationSql.fromJson(maps[i]);
    });
  }

  Future<int> getQuotationCount() async {
    final db = await FastCloudDb.instance.database;
    final result = await db.rawQuery('SELECT COUNT(*) as count FROM quotation');
    return Sqflite.firstIntValue(result) ?? 0;
  }
}
