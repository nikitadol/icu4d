// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleFallbacker {
  _LocaleFallbacker(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleFallbackerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleFallbackerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLocaleFallbacker_create'),
        createWithoutData = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocaleFallbacker> Function(),
            ffi.Pointer<ICU4XLocaleFallbacker>
                Function()>('ICU4XLocaleFallbacker_create_without_data'),
        forConfig = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleFallbackerWithConfigOrICU4XError Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
              ICU4XLocaleFallbackConfig config,
            ),
            ResultICU4XLocaleFallbackerWithConfigOrICU4XError Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
              ICU4XLocaleFallbackConfig config,
            )>('ICU4XLocaleFallbacker_for_config'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbacker> self,
            )>('ICU4XLocaleFallbacker_destroy');

  final ResultICU4XLocaleFallbackerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ffi.Pointer<ICU4XLocaleFallbacker> Function() createWithoutData;

  final ResultICU4XLocaleFallbackerWithConfigOrICU4XError Function(
    ffi.Pointer<ICU4XLocaleFallbacker> self,
    ICU4XLocaleFallbackConfig config,
  ) forConfig;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbacker> self,
  ) destroy;
}
