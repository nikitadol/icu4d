// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleFallbackConfig {
  _LocaleFallbackConfig(ffi.DynamicLibrary dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbackConfig> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbackConfig> self,
            )>('ICU4XLocaleFallbackConfig_destroy');

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbackConfig> self,
  ) destroy;
}
