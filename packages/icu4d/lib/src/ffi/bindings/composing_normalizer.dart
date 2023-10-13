// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ComposingNormalizer {
  _ComposingNormalizer(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XComposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfc = dynamicLibrary.lookupFunction<
      ResultICU4XComposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XComposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XComposingNormalizer_create_nfc',
    isLeaf: true,
  );

  late final ResultICU4XComposingNormalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createNfkc = dynamicLibrary.lookupFunction<
      ResultICU4XComposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XComposingNormalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XComposingNormalizer_create_nfkc',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XComposingNormalizer> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XComposingNormalizer> self,
      ),
      void Function(
        ffi.Pointer<ICU4XComposingNormalizer> self,
      )>(
    'ICU4XComposingNormalizer_destroy',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XComposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) isNormalized = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XComposingNormalizer> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
      ),
      bool Function(
        ffi.Pointer<ICU4XComposingNormalizer> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
      )>(
    'ICU4XComposingNormalizer_is_normalized',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XComposingNormalizer> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) normalize = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XComposingNormalizer> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XComposingNormalizer> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XComposingNormalizer_normalize',
    isLeaf: true,
  );
}
