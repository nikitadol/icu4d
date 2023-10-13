// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CanonicalCombiningClassMap {
  _CanonicalCombiningClassMap(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XCanonicalCombiningClassMapOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XCanonicalCombiningClassMapOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCanonicalCombiningClassMapOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCanonicalCombiningClassMap_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
      )>(
    'ICU4XCanonicalCombiningClassMap_destroy',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
    int ch,
  ) get = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
        ffi.Uint32 ch,
      ),
      int Function(
        ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
        int ch,
      )>(
    'ICU4XCanonicalCombiningClassMap_get',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
    int ch,
  ) get32 = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
        ffi.Uint32 ch,
      ),
      int Function(
        ffi.Pointer<ICU4XCanonicalCombiningClassMap> self,
        int ch,
      )>(
    'ICU4XCanonicalCombiningClassMap_get32',
    isLeaf: true,
  );
}
