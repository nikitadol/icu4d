// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CanonicalDecomposition {
  _CanonicalDecomposition(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XCanonicalDecompositionOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCanonicalDecompositionOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCanonicalDecomposition_create'),
        decompose = dynamicLibrary.lookupFunction<
            ICU4XDecomposed Function(
              ffi.Pointer<ICU4XCanonicalDecomposition> self,
              ffi.Uint32 c,
            ),
            ICU4XDecomposed Function(
              ffi.Pointer<ICU4XCanonicalDecomposition> self,
              int c,
            )>('ICU4XCanonicalDecomposition_decompose'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCanonicalDecomposition> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCanonicalDecomposition> self,
            )>('ICU4XCanonicalDecomposition_destroy');

  final ResultICU4XCanonicalDecompositionOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ICU4XDecomposed Function(
    ffi.Pointer<ICU4XCanonicalDecomposition> self,
    int c,
  ) decompose;

  final void Function(
    ffi.Pointer<ICU4XCanonicalDecomposition> self,
  ) destroy;
}
