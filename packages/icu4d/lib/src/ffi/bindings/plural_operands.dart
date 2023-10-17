// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _PluralOperands {
  _PluralOperands(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XPluralOperandsOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) createFromString = dynamicLibrary.lookupFunction<
      ResultICU4XPluralOperandsOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
      ),
      ResultICU4XPluralOperandsOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
      )>(
    'ICU4XPluralOperands_create_from_string',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XPluralOperands> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XPluralOperands> self,
      ),
      void Function(
        ffi.Pointer<ICU4XPluralOperands> self,
      )>(
    'ICU4XPluralOperands_destroy',
    isLeaf: true,
  );
}
