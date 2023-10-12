// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _FixedDecimal {
  _FixedDecimal(ffi.DynamicLibrary dynamicLibrary)
      : createFromI32 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Int32 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>('ICU4XFixedDecimal_create_from_i32'),
        createFromU32 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Uint32 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>('ICU4XFixedDecimal_create_from_u32'),
        createFromI64 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Int64 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>('ICU4XFixedDecimal_create_from_i64'),
        createFromU64 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Uint64 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>('ICU4XFixedDecimal_create_from_u64'),
        createFromF64WithIntegerPrecision = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
            )>('ICU4XFixedDecimal_create_from_f64_with_integer_precision'),
        createFromF64WithLowerMagnitude = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
              ffi.Int16 magnitude,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
              int magnitude,
            )>('ICU4XFixedDecimal_create_from_f64_with_lower_magnitude'),
        createFromF64WithSignificantDigits = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
              ffi.Uint8 digits,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
              int digits,
            )>('ICU4XFixedDecimal_create_from_f64_with_significant_digits'),
        createFromF64WithFloatingPrecision = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
            )>('ICU4XFixedDecimal_create_from_f64_with_floating_precision'),
        createFromString = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> v_data,
              ffi.Size v_len,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> v_data,
              int v_len,
            )>('ICU4XFixedDecimal_create_from_string'),
        digitAt = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 magnitude,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int magnitude,
            )>('ICU4XFixedDecimal_digit_at'),
        magnitudeStart = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_magnitude_start'),
        magnitudeEnd = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_magnitude_end'),
        nonzeroMagnitudeStart = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_nonzero_magnitude_start'),
        nonzeroMagnitudeEnd = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_nonzero_magnitude_end'),
        isZero = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_is_zero'),
        multiplyPow10 = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 power,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int power,
            )>('ICU4XFixedDecimal_multiply_pow10'),
        sign = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_sign'),
        setSign = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int32 sign,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int sign,
            )>('ICU4XFixedDecimal_set_sign'),
        applySignDisplay = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int32 sign_display,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int sign_display,
            )>('ICU4XFixedDecimal_apply_sign_display'),
        trimStart = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_trim_start'),
        trimEnd = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_trim_end'),
        padStart = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_pad_start'),
        padEnd = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_pad_end'),
        setMaxPosition = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_set_max_position'),
        trunc = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_trunc'),
        halfTrunc = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_half_trunc'),
        expand = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_expand'),
        halfExpand = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_half_expand'),
        ceil = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_ceil'),
        halfCeil = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_half_ceil'),
        floor = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_floor'),
        halfFloor = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_half_floor'),
        halfEven = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>('ICU4XFixedDecimal_half_even'),
        concatenateEnd = dynamicLibrary.lookupFunction<
            ResultVoidOrVoid Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<ICU4XFixedDecimal> other,
            ),
            ResultVoidOrVoid Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<ICU4XFixedDecimal> other,
            )>('ICU4XFixedDecimal_concatenate_end'),
        toString_ = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<DiplomatWriteable> to,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<DiplomatWriteable> to,
            )>('ICU4XFixedDecimal_to_string'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>('ICU4XFixedDecimal_destroy');

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromI32;

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromU32;

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromI64;

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromU64;

  final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
  ) createFromF64WithIntegerPrecision;

  final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
    int magnitude,
  ) createFromF64WithLowerMagnitude;

  final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
    int digits,
  ) createFromF64WithSignificantDigits;

  final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
  ) createFromF64WithFloatingPrecision;

  final ResultICU4XFixedDecimalOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> v_data,
    int v_len,
  ) createFromString;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int magnitude,
  ) digitAt;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) magnitudeStart;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) magnitudeEnd;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) nonzeroMagnitudeStart;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) nonzeroMagnitudeEnd;

  final bool Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) isZero;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int power,
  ) multiplyPow10;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) sign;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int sign,
  ) setSign;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int sign_display,
  ) applySignDisplay;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) trimStart;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) trimEnd;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) padStart;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) padEnd;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) setMaxPosition;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) trunc;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfTrunc;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) expand;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfExpand;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) ceil;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfCeil;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) floor;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfFloor;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfEven;

  final ResultVoidOrVoid Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    ffi.Pointer<ICU4XFixedDecimal> other,
  ) concatenateEnd;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    ffi.Pointer<DiplomatWriteable> to,
  ) toString_;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) destroy;
}
