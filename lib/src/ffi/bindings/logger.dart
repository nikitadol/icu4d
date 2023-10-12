// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Logger {
  _Logger(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLogger> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLogger> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLogger> self,
      )>(
    'ICU4XLogger_destroy',
    isLeaf: true,
  );

  late final bool Function() initSimpleLogger =
      dynamicLibrary.lookupFunction<ffi.Bool Function(), bool Function()>(
    'ICU4XLogger_init_simple_logger',
    isLeaf: true,
  );
}
