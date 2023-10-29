part of '../../ffi.dart';

enum BackwardSecondLevel {
  auto._(ICU4XCollatorBackwardSecondLevel.auto),
  off._(ICU4XCollatorBackwardSecondLevel.off),
  on._(ICU4XCollatorBackwardSecondLevel.on);

  final int _icu4xValue;

  const BackwardSecondLevel._(this._icu4xValue);
}
