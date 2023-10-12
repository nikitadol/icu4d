// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleFallbackerWithConfig {
  _LocaleFallbackerWithConfig(ffi.DynamicLibrary dynamicLibrary)
      : fallbackForLocale = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocaleFallbackIterator> Function(
              ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ffi.Pointer<ICU4XLocaleFallbackIterator> Function(
              ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XLocaleFallbackerWithConfig_fallback_for_locale'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
            )>('ICU4XLocaleFallbackerWithConfig_destroy');

  final ffi.Pointer<ICU4XLocaleFallbackIterator> Function(
    ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) fallbackForLocale;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbackerWithConfig> self,
  ) destroy;
}
