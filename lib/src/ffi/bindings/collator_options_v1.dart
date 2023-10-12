// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CollatorOptionsV1 {
  _CollatorOptionsV1(this.dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCollatorOptionsV1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCollatorOptionsV1> self,
            )>(
          'ICU4XCollatorOptionsV1_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XCollatorOptionsV1> self,
  ) destroy;
}
