// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _IsoTimeZoneOptions {
  _IsoTimeZoneOptions(ffi.DynamicLibrary dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XIsoTimeZoneOptions> self,
            ),
            void Function(
              ffi.Pointer<ICU4XIsoTimeZoneOptions> self,
            )>('ICU4XIsoTimeZoneOptions_destroy');

  final void Function(
    ffi.Pointer<ICU4XIsoTimeZoneOptions> self,
  ) destroy;
}
