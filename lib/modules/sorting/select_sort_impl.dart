import 'package:flutter_application_5/modules/modules.dart';

class SelectSortImpl<T extends Comparable> extends SortingBase<T> {
  @override
  List<T> sort({
    required List<T> values,
    SortDirection direction = SortDirection.ascending,
  }) {
    int n = values.length; //
    for (int i = 0; i < n; i++) {
      // replace a[i] with а[i+1...n]
      int min = i; //index min o max elements
      for (int j = i + 1; j < n; j++) {
        if (compare(direction, values[j], values[min])) min = j;
      }
      if (values[i] != values[min]) {
        exch(values, i, min);
      }
    }
    return List<T>.from(values);
  }
}
