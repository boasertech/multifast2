import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class FastCloudDb {
  static Database? _database;
  static final FastCloudDb instance = FastCloudDb._internal();

  FastCloudDb._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'fastcloud.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE quotation(
            quotationId INTEGER PRIMARY KEY not null,
            numberQuotation INTEGER not null,
            clientId INTEGER,
            dateRegister TEXT,
            validatyId TEXT,
            validatyDuration TEXT,
            documentTypeId INTEGER,
            coinId INTEGER,
            coinChange REAL,
            userSaleId INTEGER,
            payId INTEGER,
            formatPrintId INTEGER,
            observation TEXT
          )
        ''');

        await db.execute('''
          CREATE TABLE detail_quotation(
            detailQuotationId INTEGER PRIMARY KEY not null,
            quotationId INTEGER,
            productId INTEGER,
            originalPrice REAL,
            quantity REAL,
            taxTypeId INTEGER,
            observation TEXT,
            percentDiscount REAL
          )
        ''');
      },
    );
  }
}
