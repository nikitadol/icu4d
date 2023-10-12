// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DisplayNamesOptionsV1 {
  _DisplayNamesOptionsV1(ffi.DynamicLibrary dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDisplayNamesOptionsV1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDisplayNamesOptionsV1> self,
            )>('ICU4XDisplayNamesOptionsV1_destroy');

  final void Function(
    ffi.Pointer<ICU4XDisplayNamesOptionsV1> self,
  ) destroy;
}
