// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _CanonicalComposition {
  _CanonicalComposition(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final int Function(
    ffi.Pointer<ICU4XCanonicalComposition> self,
    int starter,
    int second,
  ) compose = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XCanonicalComposition> self,
        ffi.Uint32 starter,
        ffi.Uint32 second,
      ),
      int Function(
        ffi.Pointer<ICU4XCanonicalComposition> self,
        int starter,
        int second,
      )>(
    'ICU4XCanonicalComposition_compose',
    isLeaf: true,
  );

  late final ResultICU4XCanonicalCompositionOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XCanonicalCompositionOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCanonicalCompositionOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCanonicalComposition_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCanonicalComposition> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCanonicalComposition> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCanonicalComposition> self,
      )>(
    'ICU4XCanonicalComposition_destroy',
    isLeaf: true,
  );
}
