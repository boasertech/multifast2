class QuotationSql {
  final int? quotationId;
  final int numberQuotation;
  final int? clientId;
  final String? dateRegister;
  final String? validatyId;
  final String? validatyDuration;
  final int? documentTypeId;
  final int? coinId;
  final double? coinChange;
  final int? userSaleId;
  final int? payId;
  final int? formatPrintId;
  final String? observation;

  QuotationSql({
    this.quotationId,
    required this.numberQuotation,
    this.clientId,
    this.dateRegister,
    this.validatyId,
    this.validatyDuration,
    this.documentTypeId,
    this.coinId,
    this.coinChange,
    this.userSaleId,
    this.payId,
    this.formatPrintId,
    this.observation,
  });

  Map<String, dynamic> toMap() {
    return {
      'quotationId': quotationId,
      'numberQuotation': numberQuotation,
      'clientId': clientId,
      'dateRegister': dateRegister,
      'validatyId': validatyId,
      'validatyDuration': validatyDuration,
      'documentTypeId': documentTypeId,
      'coinId': coinId,
      'coinChange': coinChange,
      'userSaleId': userSaleId,
      'payId': payId,
      'formatPrintId': formatPrintId,
      'observation': observation,
    };
  }

  factory QuotationSql.fromMap(Map<String, dynamic> map) {
    return QuotationSql(
      quotationId: map['quotationId'],
      numberQuotation: map['numberQuotation'],
      clientId: map['clientId'],
      dateRegister: map['dateRegister'],
      validatyId: map['validatyId'],
      validatyDuration: map['validatyDuration'],
      documentTypeId: map['documentTypeId'],
      coinId: map['coinId'],
      coinChange: map['coinChange'],
      userSaleId: map['userSaleId'],
      payId: map['payId'],
      formatPrintId: map['formatPrintId'],
      observation: map['observation'],
    );
  }
}
