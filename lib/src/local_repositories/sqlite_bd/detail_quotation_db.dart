import 'package:multifast/src/local_repositories/sqlite_bd/fastcloud_db.dart';
import 'package:multifast/src/models/sqlite/detail_quotation_sql.dart';
import 'package:sqflite/sqflite.dart';

class DetailQuotationDb {
  Future<int> insertQuotation(DetailQuotationSql detailQuotation) async {
    final db = await FastCloudDb.instance.database;
    return await db.insert(
      'detail_quotation',
      detailQuotation.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> updateQuotation(DetailQuotationSql detailQuotation) async {
    final db = await FastCloudDb.instance.database;
    return await db.update(
      'detail_quotation',
      detailQuotation.toJson(),
      where: 'detailQuotationId = ?',
      whereArgs: [detailQuotation.detailQuotationId],
    );
  }

  Future<int> deleteQuotation(int id) async {
    final db = await FastCloudDb.instance.database;
    return await db.delete(
      'detail_quotation',
      where: 'detailQuotationId = ?',
      whereArgs: [id],
    );
  }

  Future<List<DetailQuotationSql>> getAllQuotations() async {
    final db = await FastCloudDb.instance.database;
    final List<Map<String, dynamic>> maps = await db.query('detail_quotation');

    return List.generate(maps.length, (i) {
      return DetailQuotationSql.fromJson(maps[i]);
    });
  }
}
