part of '../../ffi.dart';

enum TrailingCase {
  lower._(ICU4XTrailingCase.lower),
  unchanged._(ICU4XTrailingCase.unchanged);

  final int _icu4xValue;

  const TrailingCase._(this._icu4xValue);
}
