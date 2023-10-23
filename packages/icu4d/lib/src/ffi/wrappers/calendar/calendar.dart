part of '../../ffi.dart';

final class Calendar implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.calendar.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XCalendar> _pointer;

  Calendar._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory Calendar.forKind(DataProvider provider, CalendarKind kind) {
    final res = icu4XBindings.calendar.createForKind(
      provider._pointer,
      kind._icu4xValue,
    );

    if (res.is_ok) {
      return Calendar._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  factory Calendar.forLocale(DataProvider provider, BaseLocale locale) {
    final res = icu4XBindings.calendar.createForLocale(
      provider._pointer,
      locale._pointer,
    );

    if (res.is_ok) {
      return Calendar._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  CalendarKind get kind {
    final kind = CalendarKind._findFromIcu4XValue(
      icu4XBindings.calendar.kind(_pointer),
    );

    if (kind == null) {
      throw FFIError(ICU4XError.unknownError);
    }

    return kind;
  }
}
