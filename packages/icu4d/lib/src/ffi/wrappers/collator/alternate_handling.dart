part of '../../ffi.dart';

enum AlternateHandling {
  auto._(ICU4XCollatorAlternateHandling.auto),
  nonIgnorable._(ICU4XCollatorAlternateHandling.nonIgnorable),
  shifted._(ICU4XCollatorAlternateHandling.shifted);

  final int _icu4xValue;

  const AlternateHandling._(this._icu4xValue);
}
