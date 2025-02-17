abstract class AbsModel<T> {
  final int id;
  final String name;
  final T entity;
  bool isSelected;

  AbsModel(this.id, this.name, this.entity, {this.isSelected = true});

  AbsModel clone();
}
