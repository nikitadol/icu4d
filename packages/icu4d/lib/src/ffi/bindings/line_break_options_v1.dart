// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _LineBreakOptionsV1 {
  _LineBreakOptionsV1(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLineBreakOptionsV1> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLineBreakOptionsV1> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLineBreakOptionsV1> self,
      )>(
    'ICU4XLineBreakOptionsV1_destroy',
    isLeaf: true,
  );
}
