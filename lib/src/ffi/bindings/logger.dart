// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Logger {
  _Logger(ffi.DynamicLibrary dynamicLibrary)
      : initSimpleLogger =
            dynamicLibrary.lookupFunction<ffi.Bool Function(), bool Function()>(
                'ICU4XLogger_init_simple_logger'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLogger> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLogger> self,
            )>('ICU4XLogger_destroy');

  final bool Function() initSimpleLogger;

  final void Function(
    ffi.Pointer<ICU4XLogger> self,
  ) destroy;
}
