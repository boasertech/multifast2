class QCategoryModel {
  final int qcategoryId;
  final String name;
  bool isSelected;

  QCategoryModel(this.qcategoryId, this.name, {this.isSelected = true});

  QCategoryModel clone() {
    return QCategoryModel(
      qcategoryId,
      name,
      isSelected: isSelected,
    );
  }
}
