import 'package:flutter_algoritms/modules/modules.dart';

class ShellSortImpl<T extends Comparable> extends SortBase<T> {
  @override
  List<T> sort(List<T> a, {SortOrder order = SortOrder.ascending}) {
    int n = a.length;
    int h = 1;
    while (h < n / 3) {
      h = 3 * h + 1;
    }
    while (h >= 1) {
      //h-sort array
      for (int i = h; i < n; i++) {
        for (int j = i; j >= h && compare(order, a[j], a[j - h]); j -= h) {
          exch(a, j, j - h);
        }
      }
      h = h ~/ 3;
    }

    return List<T>.from(a);
  }
}
