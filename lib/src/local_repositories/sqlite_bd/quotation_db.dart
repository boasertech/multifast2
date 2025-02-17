import 'package:multifast/src/local_repositories/sqlite_bd/fastcloud_db.dart';
import 'package:multifast/src/models/sqlite/quotation_sql.dart';
import 'package:sqflite/sqflite.dart';

class QuotationDb {
  Future<int> insertQuotation(QuotationSql quotation) async {
    final db = await FastCloudDb.instance.database;
    return await db.insert(
      'quotation',
      quotation.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<QuotationSql>> getAllQuotations() async {
    final db = await FastCloudDb.instance.database;
    final List<Map<String, dynamic>> maps = await db.query('quotation');

    return List.generate(maps.length, (i) {
      return QuotationSql.fromMap(maps[i]);
    });
  }
}
