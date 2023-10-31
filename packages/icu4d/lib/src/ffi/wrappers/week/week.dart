part of '../../ffi.dart';

final class WeekCalculator implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.weekCalculator.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XWeekCalculator> _pointer;

  WeekCalculator._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory WeekCalculator(DataProvider provider, BaseLocale locale) {
    final res = _bindings.weekCalculator.create(
      provider._pointer,
      locale._pointer,
    );

    if (res.is_ok) {
      return WeekCalculator._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  factory WeekCalculator.from(IsoWeekday firstWeekday, int minWeekDays) {
    assert(minWeekDays.isU8);

    return WeekCalculator._(
      _bindings.weekCalculator.createFromFirstDayOfWeekAndMinWeekDays(
        firstWeekday._icu4xValue,
        minWeekDays,
      ),
    );
  }

  IsoWeekday get firstWeekday => IsoWeekday._fromIcu4X(
        _bindings.weekCalculator.firstWeekday(_pointer),
      );

  int get minWeekDays => _bindings.weekCalculator.minWeekDays(_pointer);

  @override
  String toString() {
    return 'WeekCalculator{firstWeekday: ${firstWeekday.name}, minWeekDays: $minWeekDays}';
  }
}
