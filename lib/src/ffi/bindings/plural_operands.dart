// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _PluralOperands {
  _PluralOperands(ffi.DynamicLibrary dynamicLibrary)
      : createFromString = dynamicLibrary.lookupFunction<
            ResultICU4XPluralOperandsOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
            ),
            ResultICU4XPluralOperandsOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
            )>('ICU4XPluralOperands_create_from_string'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XPluralOperands> self,
            ),
            void Function(
              ffi.Pointer<ICU4XPluralOperands> self,
            )>('ICU4XPluralOperands_destroy');

  final ResultICU4XPluralOperandsOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) createFromString;

  final void Function(
    ffi.Pointer<ICU4XPluralOperands> self,
  ) destroy;
}
