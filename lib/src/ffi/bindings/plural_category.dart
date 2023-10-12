// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _PluralCategory {
  _PluralCategory(ffi.DynamicLibrary dynamicLibrary)
      : getForCldrString = dynamicLibrary.lookupFunction<
            ResultICU4XPluralCategoryOrVoid Function(
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
            ),
            ResultICU4XPluralCategoryOrVoid Function(
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
            )>('ICU4XPluralCategory_get_for_cldr_string');

  final ResultICU4XPluralCategoryOrVoid Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) getForCldrString;
}
