// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _LocaleFallbackerWithConfig {
  _LocaleFallbackerWithConfig(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
          )>>('ICU4XLocaleFallbackerWithConfig_destroy');

  late final ffi.Pointer<ICU4XLocaleFallbackIterator> Function(
    ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) fallbackForLocale = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XLocaleFallbackIterator> Function(
        ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ffi.Pointer<ICU4XLocaleFallbackIterator> Function(
        ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XLocaleFallbackerWithConfig_fallback_for_locale',
    isLeaf: true,
  );
}
