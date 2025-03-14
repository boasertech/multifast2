class DetailQuotationSql {
  final int? detailQuotationId;
  final int? quotationId;
  final int? productId;
  final double? originalPrice;
  final int? quantity;
  final int? taxTypeId;
  final String? observation;
  final double? newPrice;

  DetailQuotationSql({
    this.detailQuotationId,
    this.quotationId,
    this.productId,
    this.originalPrice,
    this.quantity,
    this.taxTypeId,
    this.observation,
    this.newPrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'detailQuotationId': detailQuotationId,
      'quotationId': quotationId,
      'productId': productId,
      'originalPrice': originalPrice,
      'quantity': quantity,
      'taxTypeId': taxTypeId,
      'observation': observation,
      'newPrice': newPrice,
    };
  }

  factory DetailQuotationSql.fromJson(Map<String, dynamic> json) {
    return DetailQuotationSql(
      detailQuotationId: json['detailQuotationId'],
      quotationId: json['quotationId'],
      productId: json['productId'],
      originalPrice: (json['originalPrice'] as num?)?.toDouble(),
      quantity: json['quantity'],
      taxTypeId: json['taxTypeId'],
      observation: json['observation'],
      newPrice: (json['newPrice'] as num?)?.toDouble(),
    );
  }
}
