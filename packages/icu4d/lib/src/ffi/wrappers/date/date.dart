part of '../../ffi.dart';

final class Date implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.date.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XDate> _pointer;

  Date._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }


  // month from 1
  // day from 1
  factory Date.fromIso(int year, int month, int day, Calendar calendar) {
    assert(year.isI32);
    assert(month.isU8);
    assert(month > 0);
    assert(day.isU8);
    assert(day > 0);

    final res = _bindings.date.createFromIsoInCalendar(
      year,
      month,
      day,
      calendar._pointer,
    );

    if (res.is_ok) {
      return Date._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  factory Date.fromCodes(
    String eraCode,
    int year,
    String monthCode,
    int day,
    Calendar calendar,
  ) {
    assert(eraCode.isAscii);
    assert(eraCode.length <= 16);
    assert(year.isI32);
    assert(monthCode.isAscii);
    assert(eraCode.length <= 4);
    assert(day.isU8);

    final eraCodePointer = _StringPointer.toAscii(eraCode);
    final monthCodePointer = _StringPointer.toAscii(monthCode);

    final res = _bindings.date.createFromCodesInCalendar(
      eraCodePointer.pointer,
      eraCodePointer.size,
      year,
      monthCodePointer.pointer,
      monthCodePointer.size,
      day,
      calendar._pointer,
    );

    if (res.is_ok) {
      return Date._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  Date toCalendar(Calendar calendar) {
    return Date._(_bindings.date.toCalendar(_pointer, calendar._pointer));
  }

  IsoDate toIso() {
    return IsoDate._(_bindings.date.toIso(_pointer));
  }

  int get dayOfMonth {
    return _bindings.date.dayOfMonth(_pointer);
  }

  IsoWeekday get dayOfWeek {
    return IsoWeekday._fromIcu4X(_bindings.date.dayOfWeek(_pointer));
  }

  int weekOfMonth(IsoWeekday firstWeekday) {
    return _bindings.date.weekOfMonth(_pointer, firstWeekday._icu4xValue);
  }

  WeekOf weekOfYear(WeekCalculator weekCalculator) {
    final res = _bindings.date.weekOfYear(
      _pointer,
      weekCalculator._pointer,
    );

    if (res.is_ok) {
      return WeekOf._fromIcu4X(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  // from 1
  int get ordinalMonth => _bindings.date.ordinalMonth(_pointer);

  String get monthCode {
    return Writeable._returnAscii(
      4,
      _pointer,
      _bindings.date.monthCode,
    );
  }

  int get yearInEra => _bindings.date.yearInEra(_pointer);

  String get era {
    return Writeable._returnAscii(
      16,
      _pointer,
      _bindings.date.era,
    );
  }

  int get monthsInYear {
    return _bindings.date.monthsInYear(_pointer);
  }

  int get daysInMonth {
    return _bindings.date.daysInMonth(_pointer);
  }

  int get daysInYear {
    return _bindings.date.daysInYear(_pointer);
  }

  Calendar get calendar {
    return Calendar._(_bindings.date.calendar(_pointer));
  }

  @override
  String toString() {
    return 'Date{year: $yearInEra, month: $ordinalMonth, day: $dayOfMonth, calendar: ${calendar.kind.name}}';
  }
}
