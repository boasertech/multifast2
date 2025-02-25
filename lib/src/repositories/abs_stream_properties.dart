import 'dart:async';

abstract class AbsStreamProperties<T, E> {
  final _controller = StreamController<List<T>>.broadcast();
  List<T> _list = [];
  List<T> _listTemp = [];
  Stream<List<T>> get stream => _controller.stream;
  List<T> get list => List.from(_list);
  List<T> get listTemp => List.from(_listTemp);
  set list(List<T> value) => _list = List.from(value);
  set listTemp(List<T> value) => _listTemp = List.from(value);

  // override
  void saveList(List<E> list);
  T clone(T item);
  String forSearch(T item);

  void closeStream() {
    _list = [];
    _listTemp = [];
    _controller.add([]);
  }

  void initStream() {
    Future.delayed(Duration(milliseconds: 100), () {
      _controller.add(list);
    });
  }

  void initTempStream() {
    Future.delayed(Duration(milliseconds: 100), () {
      _controller.add(listTemp);
    });
  }

  void updateStream() {
    _controller.add(list);
  }

  void updateTempStrem() {
    _controller.add(listTemp);
  }

  void updateStreamWithTemp(List<T> filterList) {
    _controller.add(filterList);
  }

  void cleanList() {
    _list = [];
    updateStream();
  }

  void addItem(T item) {
    _list.add(item);
  }

  void removeItemAt(int index) {
    _list.removeAt(index);
  }

  void saveChanges() {
    _list = _listTemp.map((item) => clone(item)).toList();
  }

  void cancelChanges() {
    _listTemp = _list.map((item) => clone(item)).toList();
  }

  void searchInListTemp(String value) {
    final listAux = listTemp;
    if (value.isEmpty) {
      _controller.add(listAux);
      return;
    }
    final filteredList = listAux.where((item) => forSearch(item).toLowerCase().contains(value.toLowerCase())).toList();
    _controller.add(filteredList);
  }

  void dispose() {
    _controller.close();
  }
}
