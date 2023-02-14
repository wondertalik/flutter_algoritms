import 'package:flutter_algoritms/modules/modules.dart';

class InsertionSortImpl<T extends Comparable> extends SortBase<T> {
  @override
  List<T> sort({
    required List<T> values,
    SortDirection direction = SortDirection.ascending,
  }) {
    int n = values.length;

    for (int i = 1; i < n; i++) {
      //insert а[i] among a[i-1],  a[i-2],  a[i-3]...
      for (int j = i;
          j > 0 && compare(direction, values[j], values[j - 1]);
          j--) {
        exch(values, j, j - 1);
      }
    }
    return List<T>.from(values);
  }
}
