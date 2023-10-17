// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _LocaleFallbackConfig {
  _LocaleFallbackConfig(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLocaleFallbackConfig> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLocaleFallbackConfig> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLocaleFallbackConfig> self,
      )>(
    'ICU4XLocaleFallbackConfig_destroy',
    isLeaf: true,
  );
}
