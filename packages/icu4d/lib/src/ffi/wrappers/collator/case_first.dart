part of '../../ffi.dart';

enum CaseFirst {
  auto._(ICU4XCollatorCaseFirst.auto),
  off._(ICU4XCollatorCaseFirst.off),
  lowerFirst._(ICU4XCollatorCaseFirst.lowerFirst),
  upperFirst._(ICU4XCollatorCaseFirst.upperFirst);

  final int _icu4xValue;

  const CaseFirst._(this._icu4xValue);
}
