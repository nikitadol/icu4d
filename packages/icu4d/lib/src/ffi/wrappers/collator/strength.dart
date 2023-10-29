part of '../../ffi.dart';

enum Strength {
  auto._(ICU4XCollatorStrength.auto),
  primary._(ICU4XCollatorStrength.primary),
  secondary._(ICU4XCollatorStrength.secondary),
  tertiary._(ICU4XCollatorStrength.tertiary),
  quaternary._(ICU4XCollatorStrength.quaternary),
  identical._(ICU4XCollatorStrength.identical);

  final int _icu4xValue;

  const Strength._(this._icu4xValue);
}
