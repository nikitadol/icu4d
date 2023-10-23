part of '../../ffi.dart';

enum BidiDirection {
  ltr._(ICU4XBidiDirection.ltr),
  rtl._(ICU4XBidiDirection.rtl),
  mixed._(ICU4XBidiDirection.mixed);

  final int _icu4xValue;

  const BidiDirection._(this._icu4xValue);

  factory BidiDirection._fromIcu4xValue(int value) {
    switch (value) {
      case ICU4XBidiDirection.ltr:
        return BidiDirection.ltr;
      case ICU4XBidiDirection.rtl:
        return BidiDirection.rtl;
      case ICU4XBidiDirection.mixed:
        return BidiDirection.mixed;
      default:
        throw UnsupportedError('$value is not supported in BidiDirection');
    }
  }
}
