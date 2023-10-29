part of '../../ffi.dart';

enum MaxVariable {
  auto._(ICU4XCollatorMaxVariable.auto),
  space._(ICU4XCollatorMaxVariable.space),
  punctuation._(ICU4XCollatorMaxVariable.punctuation),
  symbol._(ICU4XCollatorMaxVariable.symbol),
  currency._(ICU4XCollatorMaxVariable.currency);

  final int _icu4xValue;

  const MaxVariable._(this._icu4xValue);
}
