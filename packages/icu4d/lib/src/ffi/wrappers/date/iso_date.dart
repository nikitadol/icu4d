part of '../../ffi.dart';

final class IsoDate implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.isoDate.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XIsoDate> _pointer;

  IsoDate._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory IsoDate(int year, int month, int day) {
    _debugValidateInput(year, month, day);

    final res = _bindings.isoDate.create(year, month, day);

    if (res.is_ok) {
      return IsoDate._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  static void _debugValidateInput(int year, int month, int day) {
    assert(year.isI32);
    assert(month.isU8);
    assert(month > 0);
    assert(day.isU8);
    assert(day > 0);
  }

  /// IsoDate(1970, 1, 1)
  factory IsoDate.unixEpoch() {
    return IsoDate._(_bindings.isoDate.createForUnixEpoch());
  }

  Date toCalendar(Calendar calendar) {
    return Date._(_bindings.isoDate.toCalendar(_pointer, calendar._pointer));
  }

  Date toDate() {
    return Date._(_bindings.isoDate.toAny(_pointer));
  }

  int get dayOfMonth {
    return _bindings.isoDate.dayOfMonth(_pointer);
  }

  IsoWeekday get dayOfWeek {
    return IsoWeekday._fromIcu4X(_bindings.isoDate.dayOfWeek(_pointer));
  }

  int weekOfMonth(IsoWeekday firstWeekday) {
    return _bindings.isoDate.weekOfMonth(
      _pointer,
      firstWeekday._icu4xValue,
    );
  }

  int get daysInMonth => _bindings.isoDate.daysInMonth(_pointer);

  int get daysInYear => _bindings.isoDate.daysInYear(_pointer);

  int get month => _bindings.isoDate.month(_pointer);

  int get monthsInYear => _bindings.isoDate.monthsInYear(_pointer);

  WeekOf weekOfYear(WeekCalculator weekCalculator) {
    final res = _bindings.isoDate.weekOfYear(
      _pointer,
      weekCalculator._pointer,
    );

    if (res.is_ok) {
      return WeekOf._fromIcu4X(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  int get year => _bindings.isoDate.year(_pointer);

  @override
  String toString() {
    return 'IsoDate{year: $year, month: $month, day: $dayOfMonth}';
  }
}
