// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleFallbacker {
  _LocaleFallbacker(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleFallbackerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleFallbackerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XLocaleFallbacker_create',
          isLeaf: true,
        ),
        createWithoutData = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocaleFallbacker> Function(),
            ffi.Pointer<ICU4XLocaleFallbacker> Function()>(
          'ICU4XLocaleFallbacker_create_without_data',
          isLeaf: true,
        ),
        forConfig = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleFallbackerWithConfigOrICU4XError Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
              ICU4XLocaleFallbackConfig config,
            ),
            ResultICU4XLocaleFallbackerWithConfigOrICU4XError Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
              ICU4XLocaleFallbackConfig config,
            )>(
          'ICU4XLocaleFallbacker_for_config',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
            )>(
          'ICU4XLocaleFallbacker_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XLocaleFallbackerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ffi.Pointer<ICU4XLocaleFallbacker> Function() createWithoutData;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbacker> self,
  ) destroy;

  final ResultICU4XLocaleFallbackerWithConfigOrICU4XError Function(
    ffi.Pointer<ICU4XLocaleFallbacker> self,
    ICU4XLocaleFallbackConfig config,
  ) forConfig;
}
