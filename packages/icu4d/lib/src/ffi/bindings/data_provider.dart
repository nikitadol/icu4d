// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _DataProvider {
  _DataProvider(this.dynamicLibrary)
      : createEmpty = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDataProvider> Function(),
            ffi.Pointer<ICU4XDataProvider> Function()>(
          'ICU4XDataProvider_create_empty',
          isLeaf: true,
        ),
        forkByKey = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            )>(
          'ICU4XDataProvider_fork_by_key',
          isLeaf: true,
        ),
        forkByLocale = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
              ffi.Pointer<ICU4XDataProvider> other,
            )>(
          'ICU4XDataProvider_fork_by_locale',
          isLeaf: true,
        ),
        enableLocaleFallback = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> self,
            )>(
          'ICU4XDataProvider_enable_locale_fallback',
          isLeaf: true,
        ),
        destroyPointer = dynamicLibrary.lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                  ffi.Pointer<ICU4XDataProvider> self,
                )>>('ICU4XDataProvider_destroy');

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ffi.Pointer<ICU4XDataProvider> Function() createCompiled =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XDataProvider> Function(),
          ffi.Pointer<ICU4XDataProvider> Function()>(
    'ICU4XDataProvider_create_compiled',
    isLeaf: true,
  );

  final ffi.Pointer<ICU4XDataProvider> Function() createEmpty;

  late final ResultICU4XDataProviderOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> blob_data,
    int blob_len,
  ) createFromByteSlice = dynamicLibrary.lookupFunction<
      ResultICU4XDataProviderOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> blob_data,
        ffi.Size blob_len,
      ),
      ResultICU4XDataProviderOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> blob_data,
        int blob_len,
      )>(
    'ICU4XDataProvider_create_from_byte_slice',
    isLeaf: true,
  );

  late final ResultICU4XDataProviderOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> path_data,
    int path_len,
  ) createFs = dynamicLibrary.lookupFunction<
      ResultICU4XDataProviderOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> path_data,
        ffi.Size path_len,
      ),
      ResultICU4XDataProviderOrICU4XError Function(
        ffi.Pointer<ffi.Uint8> path_data,
        int path_len,
      )>(
    'ICU4XDataProvider_create_fs',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XDataProvider> Function() createTest =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XDataProvider> Function(),
          ffi.Pointer<ICU4XDataProvider> Function()>(
    'ICU4XDataProvider_create_test',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XDataProvider> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDataProvider> self,
          )>> destroyPointer;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
  ) enableLocaleFallback;

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
    ffi.Pointer<ICU4XLocaleFallbacker> fallbacker,
  ) enableLocaleFallbackWith = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> self,
        ffi.Pointer<ICU4XLocaleFallbacker> fallbacker,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> self,
        ffi.Pointer<ICU4XLocaleFallbacker> fallbacker,
      )>(
    'ICU4XDataProvider_enable_locale_fallback_with',
    isLeaf: true,
  );

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
    ffi.Pointer<ICU4XDataProvider> other,
  ) forkByKey;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> self,
    ffi.Pointer<ICU4XDataProvider> other,
  ) forkByLocale;
}
