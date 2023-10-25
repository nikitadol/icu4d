part of '../../ffi.dart';

enum LeadingAdjustment {
  auto._(ICU4XLeadingAdjustment.auto),
  none._(ICU4XLeadingAdjustment.none),
  toCased._(ICU4XLeadingAdjustment.toCased);

  final int _icu4xValue;

  const LeadingAdjustment._(this._icu4xValue);
}
