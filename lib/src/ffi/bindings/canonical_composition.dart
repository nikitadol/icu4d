// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CanonicalComposition {
  _CanonicalComposition(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XCanonicalCompositionOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCanonicalCompositionOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCanonicalComposition_create'),
        compose = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XCanonicalComposition> self,
              ffi.Uint32 starter,
              ffi.Uint32 second,
            ),
            int Function(
              ffi.Pointer<ICU4XCanonicalComposition> self,
              int starter,
              int second,
            )>('ICU4XCanonicalComposition_compose'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCanonicalComposition> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCanonicalComposition> self,
            )>('ICU4XCanonicalComposition_destroy');

  final ResultICU4XCanonicalCompositionOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final int Function(
    ffi.Pointer<ICU4XCanonicalComposition> self,
    int starter,
    int second,
  ) compose;

  final void Function(
    ffi.Pointer<ICU4XCanonicalComposition> self,
  ) destroy;
}
