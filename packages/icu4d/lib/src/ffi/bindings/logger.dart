// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _Logger {
  _Logger(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLogger> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XLogger> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XLogger> self,
          )>>('ICU4XLogger_destroy');

  late final bool Function() initConsoleLogger =
      dynamicLibrary.lookupFunction<ffi.Bool Function(), bool Function()>(
    'ICU4XLogger_init_console_logger',
    isLeaf: true,
  );

  late final bool Function() initSimpleLogger =
      dynamicLibrary.lookupFunction<ffi.Bool Function(), bool Function()>(
    'ICU4XLogger_init_simple_logger',
    isLeaf: true,
  );
}
