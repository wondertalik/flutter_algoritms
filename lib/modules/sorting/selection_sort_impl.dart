import 'package:flutter_algoritms/modules/modules.dart';

class SelectionSortImpl<T extends Comparable> extends SortBase<T> {
  @override
  List<T> sort({
    required List<T> values,
    SortDirection direction = SortDirection.ascending,
  }) {
    int n = values.length; //
    for (int i = 0; i < n; i++) {
      //exchange a[i] with entry in a[i+1...N).
      int min = i; //index min o max entry
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
