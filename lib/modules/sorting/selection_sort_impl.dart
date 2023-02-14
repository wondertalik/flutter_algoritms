import 'package:flutter_algoritms/modules/modules.dart';

class SelectionSortImpl<T extends Comparable> extends SortBase<T> {
  @override
  List<T> sort(
    List<T> a, {
    SortOrder order = SortOrder.ascending,
  }) {
    int n = a.length; //
    for (int i = 0; i < n; i++) {
      //exchange a[i] with entry in a[i+1...N).
      int min = i; //index min o max entry
      for (int j = i + 1; j < n; j++) {
        if (compare(order, a[j], a[min])) min = j;
      }
      if (a[i] != a[min]) {
        exch(a, i, min);
      }
    }
    return List<T>.from(a);
  }
}
