// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _DecomposingNormalizer {
  _DecomposingNormalizer(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XDecomposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfd = dynamicLibrary.lookupFunction<
      ResultICU4XDecomposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XDecomposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XDecomposingNormalizer_create_nfd',
    isLeaf: true,
  );

  late final ResultICU4XDecomposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfkd = dynamicLibrary.lookupFunction<
      ResultICU4XDecomposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XDecomposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XDecomposingNormalizer_create_nfkd',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDecomposingNormalizer> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDecomposingNormalizer> self,
          )>>('ICU4XDecomposingNormalizer_destroy');

  late final bool Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) isNormalized = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDecomposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) normalize = dynamicLibrary.lookupFunction<
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
  );
}
