part of '../../ffi.dart';

enum WeekRelativeUnit {
  previous._(ICU4XWeekRelativeUnit.previous),
  current._(ICU4XWeekRelativeUnit.current),
  next._(ICU4XWeekRelativeUnit.next);

  // ignore: unused_field
  final int _icu4xValue;

  const WeekRelativeUnit._(this._icu4xValue);

  factory WeekRelativeUnit._fromIcu4X(int value) {
    const map = {
      ICU4XWeekRelativeUnit.previous: WeekRelativeUnit.previous,
      ICU4XWeekRelativeUnit.current: WeekRelativeUnit.current,
      ICU4XWeekRelativeUnit.next: WeekRelativeUnit.next,
    };

    final res = map[value];

    if (res == null) {
      throw UnsupportedError('WeekRelativeUnit not support $value');
    }

    return res;
  }
}
