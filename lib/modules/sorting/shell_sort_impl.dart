import 'package:flutter_algoritms/modules/modules.dart';

class ShellSortImpl<T extends Comparable> extends SortBase<T> {
  @override
  List<T> sort({
    required List<T> values,
    SortDirection direction = SortDirection.ascending,
  }) {
    int n = values.length;
    int h = 1;
    while (h < n / 3) {
      h = 3 * h + 1;
    }
    while (h >= 1) {
      //h-sort array
      for (int i = h; i < n; i++) {
        for (int j = i;
            j >= h && compare(direction, values[j], values[j - h]);
            j -= h) {
          exch(values, j, j - h);
        }
      }
      h = h ~/ 3;
    }

    return List<T>.from(values);
  }
}
