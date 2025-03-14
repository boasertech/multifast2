class QuotationSql {
  final int? quotationId;
  final int numberQuotation;
  final int? clientId;
  final String? clientName;
  final String? dateRegister;
  final String? dateQuotation;
  final int? validityId;
  final String? validityDuration;
  final int? documentTypeId;
  final String? coinId;
  final double? coinChange;
  final int? sellerId;
  final String? sellerName;
  final int? payId;
  final int? voucherId;
  final String? observation;

  QuotationSql({
    this.quotationId,
    required this.numberQuotation,
    this.clientId,
    this.clientName,
    this.dateRegister,
    this.dateQuotation,
    this.validityId,
    this.validityDuration,
    this.documentTypeId,
    this.coinId,
    this.coinChange,
    this.sellerId,
    this.sellerName,
    this.payId,
    this.voucherId,
    this.observation,
  });

  Map<String, dynamic> toJson() {
    return {
      'quotationId': quotationId,
      'numberQuotation': numberQuotation,
      'clientId': clientId,
      'clientName': clientName,
      'dateRegister': dateRegister,
      'dateQuotation': dateQuotation,
      'validityId': validityId,
      'validityDuration': validityDuration,
      'documentTypeId': documentTypeId,
      'coinId': coinId,
      'coinChange': coinChange,
      'sellerId': sellerId,
      'sellerName': sellerName,
      'payId': payId,
      'voucherId': voucherId,
      'observation': observation,
    };
  }

  factory QuotationSql.fromJson(Map<String, dynamic> json) {
    return QuotationSql(
      quotationId: json['quotationId'] as int?,
      numberQuotation: json['numberQuotation'] as int,
      clientId: json['clientId'] as int?,
      clientName: json['clientName'] as String?,
      dateRegister: json['dateRegister'] as String?,
      dateQuotation: json['dateQuotation'] as String?,
      validityId: json['validityId'] as int?,
      validityDuration: json['validityDuration'] as String?,
      documentTypeId: json['documentTypeId'] as int?,
      coinId: json['coinId'] as String?,
      coinChange: (json['coinChange'] as num?)?.toDouble(),
      sellerId: json['sellerId'] as int?,
      sellerName: json['sellerName'] as String?,
      payId: json['payId'] as int?,
      voucherId: json['voucherId'] as int?,
      observation: json['observation'] as String?,
    );
  }
}
