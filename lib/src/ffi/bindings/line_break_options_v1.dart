// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LineBreakOptionsV1 {
  _LineBreakOptionsV1(ffi.DynamicLibrary dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLineBreakOptionsV1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLineBreakOptionsV1> self,
            )>('ICU4XLineBreakOptionsV1_destroy');

  final void Function(
    ffi.Pointer<ICU4XLineBreakOptionsV1> self,
  ) destroy;
}
