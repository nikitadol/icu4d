part of '../../ffi.dart';

enum Numeric {
  auto._(ICU4XCollatorNumeric.auto),
  off._(ICU4XCollatorNumeric.off),
  on._(ICU4XCollatorNumeric.on);

  final int _icu4xValue;

  const Numeric._(this._icu4xValue);
}
