abstract class SortBase<T extends Comparable> {
  List<T> sort(List<T> a, {SortOrder order = SortOrder.ascending});

  void exch(List<Comparable> a, int i, int j) {
    Comparable t = a[i];
    a[i] = a[j];
    a[j] = t;
  }

  bool compare(SortOrder order, T v, T w) {
    final compareOrder = order == SortOrder.ascending ? _less : _above;
    return compareOrder(v, w);
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

enum SortOrder { ascending, descending }
