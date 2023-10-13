// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DataStruct {
  _DataStruct(this.dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDataStruct> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDataStruct> self,
            )>(
          'ICU4XDataStruct_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XDataStructOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> plus_sign_prefix_data,
    int plus_sign_prefix_len,
    ffi.Pointer<ffi.Uint8> plus_sign_suffix_data,
    int plus_sign_suffix_len,
    ffi.Pointer<ffi.Uint8> minus_sign_prefix_data,
    int minus_sign_prefix_len,
    ffi.Pointer<ffi.Uint8> minus_sign_suffix_data,
    int minus_sign_suffix_len,
    ffi.Pointer<ffi.Uint8> decimal_separator_data,
    int decimal_separator_len,
    ffi.Pointer<ffi.Uint8> grouping_separator_data,
    int grouping_separator_len,
    int primary_group_size,
    int secondary_group_size,
    int min_group_size,
    ffi.Pointer<ffi.Uint32> digits_data,
    int digits_len,
  ) createDecimalSymbolsV1 = dynamicLibrary.lookupFunction<
      ResultICU4XDataStructOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> plus_sign_prefix_data,
        ffi.Size plus_sign_prefix_len,
        ffi.Pointer<ffi.Uint8> plus_sign_suffix_data,
        ffi.Size plus_sign_suffix_len,
        ffi.Pointer<ffi.Uint8> minus_sign_prefix_data,
        ffi.Size minus_sign_prefix_len,
        ffi.Pointer<ffi.Uint8> minus_sign_suffix_data,
        ffi.Size minus_sign_suffix_len,
        ffi.Pointer<ffi.Uint8> decimal_separator_data,
        ffi.Size decimal_separator_len,
        ffi.Pointer<ffi.Uint8> grouping_separator_data,
        ffi.Size grouping_separator_len,
        ffi.Uint8 primary_group_size,
        ffi.Uint8 secondary_group_size,
        ffi.Uint8 min_group_size,
        ffi.Pointer<ffi.Uint32> digits_data,
        ffi.Size digits_len,
      ),
      ResultICU4XDataStructOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> plus_sign_prefix_data,
        int plus_sign_prefix_len,
        ffi.Pointer<ffi.Uint8> plus_sign_suffix_data,
        int plus_sign_suffix_len,
        ffi.Pointer<ffi.Uint8> minus_sign_prefix_data,
        int minus_sign_prefix_len,
        ffi.Pointer<ffi.Uint8> minus_sign_suffix_data,
        int minus_sign_suffix_len,
        ffi.Pointer<ffi.Uint8> decimal_separator_data,
        int decimal_separator_len,
        ffi.Pointer<ffi.Uint8> grouping_separator_data,
        int grouping_separator_len,
        int primary_group_size,
        int secondary_group_size,
        int min_group_size,
        ffi.Pointer<ffi.Uint32> digits_data,
        int digits_len,
      )>(
    'ICU4XDataStruct_create_decimal_symbols_v1',
    isLeaf: true,
  );

  final void Function(
    ffi.Pointer<ICU4XDataStruct> self,
  ) destroy;
}
