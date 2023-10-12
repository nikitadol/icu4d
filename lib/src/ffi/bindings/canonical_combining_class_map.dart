// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CanonicalCombiningClassMap {
  _CanonicalCombiningClassMap(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XCanonicalCombiningClassMapOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCanonicalCombiningClassMapOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCanonicalCombiningClassMap_create'),
        get = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
              ffi.Uint32 ch,
            ),
            int Function(
              ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
              int ch,
            )>('ICU4XCanonicalCombiningClassMap_get'),
        get32 = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
              ffi.Uint32 ch,
            ),
            int Function(
              ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
              int ch,
            )>('ICU4XCanonicalCombiningClassMap_get32'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
            )>('ICU4XCanonicalCombiningClassMap_destroy');

  final ResultICU4XCanonicalCombiningClassMapOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final int Function(
    ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
    int ch,
  ) get;

  final int Function(
    ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
    int ch,
  ) get32;

  final void Function(
    ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
  ) destroy;
}
