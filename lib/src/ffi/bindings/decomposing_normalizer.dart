// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DecomposingNormalizer {
  _DecomposingNormalizer(ffi.DynamicLibrary dynamicLibrary)
      : createNfd = dynamicLibrary.lookupFunction<
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XDecomposingNormalizer_create_nfd'),
        createNfkd = dynamicLibrary.lookupFunction<
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XDecomposingNormalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XDecomposingNormalizer_create_nfkd'),
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
            )>('ICU4XDecomposingNormalizer_normalize'),
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
            )>('ICU4XDecomposingNormalizer_is_normalized'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDecomposingNormalizer> self,
            )>('ICU4XDecomposingNormalizer_destroy');

  final ResultICU4XDecomposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfd;

  final ResultICU4XDecomposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfkd;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) normalize;

  final bool Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) isNormalized;

  final void Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
  ) destroy;
}
