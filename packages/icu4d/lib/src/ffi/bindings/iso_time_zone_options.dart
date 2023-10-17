// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _IsoTimeZoneOptions {
  _IsoTimeZoneOptions(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XIsoTimeZoneOptions> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XIsoTimeZoneOptions> self,
      ),
      void Function(
        ffi.Pointer<ICU4XIsoTimeZoneOptions> self,
      )>(
    'ICU4XIsoTimeZoneOptions_destroy',
    isLeaf: true,
  );
}
