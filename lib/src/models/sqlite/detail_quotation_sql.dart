class DetailQuotationSql {
  final int? detailQuotationId;
  final int? quotationId;
  final int? productId;
  final double? originalPrice;
  final double? quantity;
  final int? taxTypeId;
  final String? observation;
  final double? percentDiscount;

  DetailQuotationSql({
    this.detailQuotationId,
    this.quotationId,
    this.productId,
    this.originalPrice,
    this.quantity,
    this.taxTypeId,
    this.observation,
    this.percentDiscount,
  });

  Map<String, dynamic> toMap() {
    return {
      'detailQuotationId': detailQuotationId,
      'quotationId': quotationId,
      'productId': productId,
      'originalPrice': originalPrice,
      'quantity': quantity,
      'taxTypeId': taxTypeId,
      'observation': observation,
      'percentDiscount': percentDiscount,
    };
  }

  factory DetailQuotationSql.fromMap(Map<String, dynamic> map) {
    return DetailQuotationSql(
      detailQuotationId: map['detailQuotationId'],
      quotationId: map['quotationId'],
      productId: map['productId'],
      originalPrice: map['originalPrice'],
      quantity: map['quantity'],
      taxTypeId: map['taxTypeId'],
      observation: map['observation'],
      percentDiscount: map['percentDiscount'],
    );
  }
}
