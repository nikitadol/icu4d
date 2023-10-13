// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Decomposed {
  _Decomposed(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XDecomposed> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XDecomposed> self,
      ),
      void Function(
        ffi.Pointer<ICU4XDecomposed> self,
      )>(
    'ICU4XDecomposed_destroy',
    isLeaf: true,
  );
}
