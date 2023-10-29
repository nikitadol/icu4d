extension WindowsIterable<T> on Iterable<T> {
  // print([1,2,3,4,5,6,7,8].windows(2).toList()) // [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8]]
  Iterable<List<T>> windows(int count) sync* {
    assert(count > 0);

    final iterator = this.iterator;
    List<T> buff = [];

    while (iterator.moveNext()) {
      buff.add(iterator.current);

      if (buff.length == count) {
        break;
      }
    }

    if (buff.length != count) {
      return;
    }

    yield buff;

    if (!iterator.moveNext()) {
      return;
    }

    do {
      buff = List.generate(
        count - 1,
        (index) => buff[index + 1],
      );
      buff.add(iterator.current);
      yield buff;
    } while (iterator.moveNext());
  }
}
