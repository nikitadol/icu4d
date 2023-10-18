// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _FixedDecimal {
  _FixedDecimal(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

// C args:
// - ICU4XFixedDecimal*
// - ICU4XFixedDecimalSignDisplay
//
// C return:
// - ffi.Void
  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int sign_display,
  ) applySignDisplay = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) ceil = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrVoid Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    ffi.Pointer<ICU4XFixedDecimal> other,
  ) concatenateEnd = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
  ) createFromF64WithFloatingPrecision = dynamicLibrary.lookupFunction<
      ResultICU4XFixedDecimalOrICU4XError Function(
        ffi.Double f,
      ),
      ResultICU4XFixedDecimalOrICU4XError Function(
        double f,
      )>(
    'ICU4XFixedDecimal_create_from_f64_with_floating_precision',
    isLeaf: true,
  );

  late final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
  ) createFromF64WithIntegerPrecision = dynamicLibrary.lookupFunction<
      ResultICU4XFixedDecimalOrICU4XError Function(
        ffi.Double f,
      ),
      ResultICU4XFixedDecimalOrICU4XError Function(
        double f,
      )>(
    'ICU4XFixedDecimal_create_from_f64_with_integer_precision',
    isLeaf: true,
  );

  late final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
    int magnitude,
  ) createFromF64WithLowerMagnitude = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XFixedDecimalOrICU4XError Function(
    double f,
    int digits,
  ) createFromF64WithSignificantDigits = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromI32 = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XFixedDecimal> Function(
        ffi.Int32 v,
      ),
      ffi.Pointer<ICU4XFixedDecimal> Function(
        int v,
      )>(
    'ICU4XFixedDecimal_create_from_i32',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromI64 = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XFixedDecimal> Function(
        ffi.Int64 v,
      ),
      ffi.Pointer<ICU4XFixedDecimal> Function(
        int v,
      )>(
    'ICU4XFixedDecimal_create_from_i64',
    isLeaf: true,
  );

  late final ResultICU4XFixedDecimalOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> v_data,
    int v_len,
  ) createFromString = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromU32 = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XFixedDecimal> Function(
        ffi.Uint32 v,
      ),
      ffi.Pointer<ICU4XFixedDecimal> Function(
        int v,
      )>(
    'ICU4XFixedDecimal_create_from_u32',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XFixedDecimal> Function(
    int v,
  ) createFromU64 = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XFixedDecimal> Function(
        ffi.Uint64 v,
      ),
      ffi.Pointer<ICU4XFixedDecimal> Function(
        int v,
      )>(
    'ICU4XFixedDecimal_create_from_u64',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XFixedDecimal> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XFixedDecimal> self,
          )>>('ICU4XFixedDecimal_destroy');

  late final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int magnitude,
  ) digitAt = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) expand = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) floor = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfCeil = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfEven = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfExpand = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfFloor = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) halfTrunc = dynamicLibrary.lookupFunction<
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
  );

  late final bool Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) isZero = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      bool Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_is_zero',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) magnitudeEnd = dynamicLibrary.lookupFunction<
      ffi.Int16 Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      int Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_magnitude_end',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) magnitudeStart = dynamicLibrary.lookupFunction<
      ffi.Int16 Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      int Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_magnitude_start',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int power,
  ) multiplyPow10 = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) nonzeroMagnitudeEnd = dynamicLibrary.lookupFunction<
      ffi.Int16 Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      int Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_nonzero_magnitude_end',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) nonzeroMagnitudeStart = dynamicLibrary.lookupFunction<
      ffi.Int16 Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      int Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_nonzero_magnitude_start',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) padEnd = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) padStart = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) setMaxPosition = dynamicLibrary.lookupFunction<
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
  );

// C args:
// - ICU4XFixedDecimal*
// - ICU4XFixedDecimalSign
//
// C return:
// - ffi.Void
  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int sign,
  ) setSign = dynamicLibrary.lookupFunction<
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
  );

// C args:
// - ICU4XFixedDecimal*
//
// C return:
// - ICU4XFixedDecimalSign
  late final int Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) sign = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      int Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_sign',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    ffi.Pointer<DiplomatWriteable> to,
  ) toString_ = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) trimEnd = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      void Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_trim_end',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
  ) trimStart = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      ),
      void Function(
        ffi.Pointer<ICU4XFixedDecimal> self,
      )>(
    'ICU4XFixedDecimal_trim_start',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimal> self,
    int position,
  ) trunc = dynamicLibrary.lookupFunction<
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
  );
}
