// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Decomposed {
  _Decomposed(ffi.DynamicLibrary dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDecomposed> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDecomposed> self,
            )>('ICU4XDecomposed_destroy');

  final void Function(
    ffi.Pointer<ICU4XDecomposed> self,
  ) destroy;
}
