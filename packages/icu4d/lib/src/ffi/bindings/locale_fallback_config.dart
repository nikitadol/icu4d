// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleFallbackConfig {
  _LocaleFallbackConfig(this.dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbackConfig> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbackConfig> self,
            )>(
          'ICU4XLocaleFallbackConfig_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbackConfig> self,
  ) destroy;
}
