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
	observation TEXT,
);

CREATE TABLE detail_quotation(
	quototationId INTEGER PRIMARY KEY not null,
	productId INTEGER,
	originalPrice REAL,
	quantity REAL,
	taxTypeId INTEGER,
	observation TEXT,
	percentDiscount REAL,
);
