// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DisplayNamesOptionsV1 {
  _DisplayNamesOptionsV1(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XDisplayNamesOptionsV1> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XDisplayNamesOptionsV1> self,
      ),
      void Function(
        ffi.Pointer<ICU4XDisplayNamesOptionsV1> self,
      )>(
    'ICU4XDisplayNamesOptionsV1_destroy',
    isLeaf: true,
  );
}
