// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GeneralCategoryNameToMaskMapper {
  _GeneralCategoryNameToMaskMapper(this.dynamicLibrary)
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
            )>(
          'ICU4XGeneralCategoryNameToMaskMapper_get_strict',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XGeneralCategoryNameToMaskMapper_get_loose',
          isLeaf: true,
        ),
        load = dynamicLibrary.lookupFunction<
            ResultICU4XGeneralCategoryNameToMaskMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XGeneralCategoryNameToMaskMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XGeneralCategoryNameToMaskMapper_load',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
            )>(
          'ICU4XGeneralCategoryNameToMaskMapper_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getLoose;

  final int Function(
    ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getStrict;

  final ResultICU4XGeneralCategoryNameToMaskMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) load;
}
