// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _FixedDecimal {
  _FixedDecimal(this.dynamicLibrary)
      : createFromI32 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Int32 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>(
          'ICU4XFixedDecimal_create_from_i32',
          isLeaf: true,
        ),
        createFromU32 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Uint32 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>(
          'ICU4XFixedDecimal_create_from_u32',
          isLeaf: true,
        ),
        createFromI64 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Int64 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>(
          'ICU4XFixedDecimal_create_from_i64',
          isLeaf: true,
        ),
        createFromU64 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XFixedDecimal> Function(
              ffi.Uint64 v,
            ),
            ffi.Pointer<ICU4XFixedDecimal> Function(
              int v,
            )>(
          'ICU4XFixedDecimal_create_from_u64',
          isLeaf: true,
        ),
        createFromF64WithIntegerPrecision = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
            )>(
          'ICU4XFixedDecimal_create_from_f64_with_integer_precision',
          isLeaf: true,
        ),
        createFromF64WithLowerMagnitude = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
              ffi.Int16 magnitude,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
              int magnitude,
            )>(
          'ICU4XFixedDecimal_create_from_f64_with_lower_magnitude',
          isLeaf: true,
        ),
        createFromF64WithSignificantDigits = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
              ffi.Uint8 digits,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
              int digits,
            )>(
          'ICU4XFixedDecimal_create_from_f64_with_significant_digits',
          isLeaf: true,
        ),
        createFromF64WithFloatingPrecision = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Double f,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              double f,
            )>(
          'ICU4XFixedDecimal_create_from_f64_with_floating_precision',
          isLeaf: true,
        ),
        createFromString = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> v_data,
              ffi.Size v_len,
            ),
            ResultICU4XFixedDecimalOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> v_data,
              int v_len,
            )>(
          'ICU4XFixedDecimal_create_from_string',
          isLeaf: true,
        ),
        digitAt = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 magnitude,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int magnitude,
            )>(
          'ICU4XFixedDecimal_digit_at',
          isLeaf: true,
        ),
        magnitudeStart = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_magnitude_start',
          isLeaf: true,
        ),
        magnitudeEnd = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_magnitude_end',
          isLeaf: true,
        ),
        nonzeroMagnitudeStart = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_nonzero_magnitude_start',
          isLeaf: true,
        ),
        nonzeroMagnitudeEnd = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_nonzero_magnitude_end',
          isLeaf: true,
        ),
        isZero = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_is_zero',
          isLeaf: true,
        ),
        multiplyPow10 = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 power,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int power,
            )>(
          'ICU4XFixedDecimal_multiply_pow10',
          isLeaf: true,
        ),
        sign = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            int Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_sign',
          isLeaf: true,
        ),
        setSign = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int32 sign,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int sign,
            )>(
          'ICU4XFixedDecimal_set_sign',
          isLeaf: true,
        ),
        applySignDisplay = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int32 sign_display,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int sign_display,
            )>(
          'ICU4XFixedDecimal_apply_sign_display',
          isLeaf: true,
        ),
        trimStart = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_trim_start',
          isLeaf: true,
        ),
        trimEnd = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_trim_end',
          isLeaf: true,
        ),
        padStart = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_pad_start',
          isLeaf: true,
        ),
        padEnd = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_pad_end',
          isLeaf: true,
        ),
        setMaxPosition = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_set_max_position',
          isLeaf: true,
        ),
        trunc = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_trunc',
          isLeaf: true,
        ),
        halfTrunc = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_half_trunc',
          isLeaf: true,
        ),
        expand = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_expand',
          isLeaf: true,
        ),
        halfExpand = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_half_expand',
          isLeaf: true,
        ),
        ceil = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_ceil',
          isLeaf: true,
        ),
        halfCeil = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_half_ceil',
          isLeaf: true,
        ),
        floor = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_floor',
          isLeaf: true,
        ),
        halfFloor = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_half_floor',
          isLeaf: true,
        ),
        halfEven = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Int16 position,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              int position,
            )>(
          'ICU4XFixedDecimal_half_even',
          isLeaf: true,
        ),
        concatenateEnd = dynamicLibrary.lookupFunction<
            ResultVoidOrVoid Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<ICU4XFixedDecimal> other,
            ),
            ResultVoidOrVoid Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<ICU4XFixedDecimal> other,
            )>(
          'ICU4XFixedDecimal_concatenate_end',
          isLeaf: true,
        ),
        toString_ = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<DiplomatWriteable> to,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
              ffi.Pointer<DiplomatWriteable> to,
            )>(
          'ICU4XFixedDecimal_to_string',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimal> self,
            )>(
          'ICU4XFixedDecimal_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int sign_display,
  ) applySignDisplay;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) ceil;

  final ResultVoidOrVoid Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    ffi.Pointer<ICU4XFixedDecimal> other,
  ) concatenateEnd;

  final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
  ) createFromF64WithFloatingPrecision;

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

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromI32;

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromI64;

  final ResultICU4XFixedDecimalOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> v_data,
    int v_len,
  ) createFromString;

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromU32;

  final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromU64;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int magnitude,
  ) digitAt;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) expand;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) floor;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfCeil;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfEven;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfExpand;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfFloor;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfTrunc;

  final bool Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) isZero;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) magnitudeEnd;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) magnitudeStart;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int power,
  ) multiplyPow10;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) nonzeroMagnitudeEnd;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) nonzeroMagnitudeStart;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) padEnd;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) padStart;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) setMaxPosition;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int sign,
  ) setSign;

  final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) sign;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    ffi.Pointer<DiplomatWriteable> to,
  ) toString_;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) trimEnd;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) trimStart;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) trunc;
}
