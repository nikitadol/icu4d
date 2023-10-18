import 'package:collection/collection.dart';

extension WindowsIterable<T> on List<T> {
  // print([1,2,3,4,5,6,7,8].windows(2).toList()) // [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8]]
  Iterable<List<T>> windows(int count) sync* {
    assert(count > 0);

    final length = this.length;

    if (count > length) return;

    for (int i = 0; i <= length - count; i++) {
      yield slice(i, i + count);
    }
  }
}
