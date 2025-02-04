abstract class AbsStreamRepository<T> {
  void create(T value);

  void readAll();

  void search(T filter);

  void update(T value);

  void delete(T value);
}
