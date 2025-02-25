class QuotationSql {
  final int? quotationId;
  final int numberQuotation;
  final int? clientId;
  final String? dateRegister;
  final int? validityId;
  final String? validityDuration;
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
    this.validityId,
    this.validityDuration,
    this.documentTypeId,
    this.coinId,
    this.coinChange,
    this.userSaleId,
    this.payId,
    this.formatPrintId,
    this.observation,
  });

  Map<String, dynamic> toJson() {
    return {
      'quotationId': quotationId,
      'numberQuotation': numberQuotation,
      'clientId': clientId,
      'dateRegister': dateRegister,
      'validityId': validityId,
      'validityDuration': validityDuration,
      'documentTypeId': documentTypeId,
      'coinId': coinId,
      'coinChange': coinChange,
      'userSaleId': userSaleId,
      'payId': payId,
      'formatPrintId': formatPrintId,
      'observation': observation,
    };
  }

  factory QuotationSql.fromJson(Map<String, dynamic> json) {
    return QuotationSql(
      quotationId: json['quotationId'] as int?,
      numberQuotation: json['numberQuotation'] as int,
      clientId: json['clientId'] as int?,
      dateRegister: json['dateRegister'] as String?,
      validityId: json['validityId'] as int?,
      validityDuration: json['validityDuration'] as String?,
      documentTypeId: json['documentTypeId'] as int?,
      coinId: json['coinId'] as int?,
      coinChange: (json['coinChange'] as num?)?.toDouble(),
      userSaleId: json['userSaleId'] as int?,
      payId: json['payId'] as int?,
      formatPrintId: json['formatPrintId'] as int?,
      observation: json['observation'] as String?,
    );
  }
}
