import 'package:flutter_algoritms/modules/modules.dart';

class InsertionSortImpl<T extends Comparable> extends SortBase<T> {
  @override
  List<T> sort(List<T> a, {SortOrder order = SortOrder.ascending}) {
    int n = a.length;

    for (int i = 1; i < n; i++) {
      //insert а[i] among a[i-1],  a[i-2],  a[i-3]...
      for (int j = i; j > 0 && compare(order, a[j], a[j - 1]); j--) {
        exch(a, j, j - 1);
      }
    }
    return List<T>.from(a);
  }
}
