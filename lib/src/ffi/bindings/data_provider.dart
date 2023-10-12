// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DataProvider {
  _DataProvider(ffi.DynamicLibrary dynamicLibrary)
      : createFs = dynamicLibrary.lookupFunction<
            ResultICU4XDataProviderOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> path_data,
              ffi.Size path_len,
            ),
            ResultICU4XDataProviderOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> path_data,
              int path_len,
            )>('ICU4XDataProvider_create_fs'),
        createTest = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDataProvider> Function(),
            ffi.Pointer<ICU4XDataProvider>
                Function()>('ICU4XDataProvider_create_test'),
        createFromByteSlice = dynamicLibrary.lookupFunction<
            ResultICU4XDataProviderOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> blob_data,
              ffi.Size blob_len,
            ),
            ResultICU4XDataProviderOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> blob_data,
              int blob_len,
            )>('ICU4XDataProvider_create_from_byte_slice'),
        createEmpty = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDataProvider> Function(),
            ffi.Pointer<ICU4XDataProvider>
                Function()>('ICU4XDataProvider_create_empty'),
        forkByKey = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            )>('ICU4XDataProvider_fork_by_key'),
        forkByLocale = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            )>('ICU4XDataProvider_fork_by_locale'),
        enableLocaleFallback = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
            )>('ICU4XDataProvider_enable_locale_fallback'),
        enableLocaleFallbackWith = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XLocaleFallbacker> fallbacker,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XLocaleFallbacker> fallbacker,
            )>('ICU4XDataProvider_enable_locale_fallback_with'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDataProvider> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDataProvider> self,
            )>('ICU4XDataProvider_destroy');

  final ResultICU4XDataProviderOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> path_data,
    int path_len,
  ) createFs;

  final ffi.Pointer<ICU4XDataProvider> Function() createTest;

  final ResultICU4XDataProviderOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> blob_data,
    int blob_len,
  ) createFromByteSlice;

  final ffi.Pointer<ICU4XDataProvider> Function() createEmpty;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
    ffi.Pointer<ICU4XDataProvider> other,
  ) forkByKey;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
    ffi.Pointer<ICU4XDataProvider> other,
  ) forkByLocale;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
  ) enableLocaleFallback;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
    ffi.Pointer<ICU4XLocaleFallbacker> fallbacker,
  ) enableLocaleFallbackWith;

  final void Function(
    ffi.Pointer<ICU4XDataProvider> self,
  ) destroy;
}
