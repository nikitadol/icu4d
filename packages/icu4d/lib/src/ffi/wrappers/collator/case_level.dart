part of '../../ffi.dart';

enum CaseLevel {
  auto._(ICU4XCollatorCaseLevel.auto),
  off._(ICU4XCollatorCaseLevel.off),
  on._(ICU4XCollatorCaseLevel.on);

  final int _icu4xValue;

  const CaseLevel._(this._icu4xValue);
}
