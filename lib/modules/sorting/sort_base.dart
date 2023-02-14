abstract class SortBase<T extends Comparable> {
  List<T> sort({
    required List<T> values,
    SortDirection direction = SortDirection.ascending,
  });

  void exch(List<Comparable> a, int i, int j) {
    Comparable t = a[i];
    a[i] = a[j];
    a[j] = t;
  }

  bool compare(SortDirection direction, T v, T w) {
    final compareDirection =
        direction == SortDirection.ascending ? _less : _above;
    return compareDirection(v, w);
  }

  bool _less(T v, T w) {
    final value = v.compareTo(w);
    return value < 0;
  }

  bool _above(T v, T w) {
    final value = v.compareTo(w);
    return value > 0;
  }
}

enum SortDirection { ascending, descending }
