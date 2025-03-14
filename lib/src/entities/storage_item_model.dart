class StorageItem {
  final int storageId;
  final double quantity;

  StorageItem({required this.storageId, required this.quantity});

  factory StorageItem.fromJson(Map<String, dynamic> json) {
    return StorageItem(
      storageId: json['StorageId'],
      quantity: double.parse(json['Quantity'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'StorageId': storageId,
      'Quantity': quantity.toString(),
    };
  }
}
