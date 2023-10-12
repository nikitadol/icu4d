// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DecomposingNormalizer {
  _DecomposingNormalizer(this.dynamicLibrary)
      : createNfd = dynamicLibrary.lookupFunction<
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XDecomposingNormalizer_create_nfd',
          isLeaf: true,
        ),
        createNfkd = dynamicLibrary.lookupFunction<
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XDecomposingNormalizer_create_nfkd',
          isLeaf: true,
        ),
        normalize = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XDecomposingNormalizer_normalize',
          isLeaf: true,
        ),
        isNormalized = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
            ),
            bool Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
            )>(
          'ICU4XDecomposingNormalizer_is_normalized',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
            )>(
          'ICU4XDecomposingNormalizer_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XDecomposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfd;

  final ResultICU4XDecomposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfkd;

  final void Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
  ) destroy;

  final bool Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) isNormalized;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) normalize;
}
