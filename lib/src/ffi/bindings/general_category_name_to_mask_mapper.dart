// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GeneralCategoryNameToMaskMapper {
  _GeneralCategoryNameToMaskMapper(ffi.DynamicLibrary dynamicLibrary)
      : getStrict = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              ffi.Size name_len,
            ),
            int Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              int name_len,
            )>('ICU4XGeneralCategoryNameToMaskMapper_get_strict'),
        getLoose = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              ffi.Size name_len,
            ),
            int Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              int name_len,
            )>('ICU4XGeneralCategoryNameToMaskMapper_get_loose'),
        load = dynamicLibrary.lookupFunction<
            ResultICU4XGeneralCategoryNameToMaskMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XGeneralCategoryNameToMaskMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XGeneralCategoryNameToMaskMapper_load'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
            )>('ICU4XGeneralCategoryNameToMaskMapper_destroy');

  final int Function(
    ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getStrict;

  final int Function(
    ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getLoose;

  final ResultICU4XGeneralCategoryNameToMaskMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) load;

  final void Function(
    ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
  ) destroy;
}
