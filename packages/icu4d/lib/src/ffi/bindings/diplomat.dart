// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _Diplomat {
  _Diplomat(this.dynamicLibrary)
      : simpleWriteable = dynamicLibrary.lookupFunction<
            DiplomatWriteable Function(
              ffi.Pointer<ffi.Uint8> buf,
              ffi.Size buf_size,
            ),
            DiplomatWriteable Function(
              ffi.Pointer<ffi.Uint8> buf,
              int buf_size,
            )>(
          'diplomat_simple_writeable',
          isLeaf: true,
        ),
        bufferWriteableCreate = dynamicLibrary.lookupFunction<
            ffi.Pointer<DiplomatWriteable> Function(
              ffi.Size cap,
            ),
            ffi.Pointer<DiplomatWriteable> Function(
              int cap,
            )>(
          'diplomat_buffer_writeable_create',
          isLeaf: true,
        ),
        bufferWriteableDestroyPointer = dynamicLibrary.lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                  ffi.Pointer<DiplomatWriteable> this_,
                )>>('diplomat_buffer_writeable_destroy');

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ffi.Pointer<DiplomatWriteable> Function(
    int cap,
  ) bufferWriteableCreate;

  late final void Function(
    ffi.Pointer<DiplomatWriteable> this_,
  ) bufferWriteableDestroy =
      bufferWriteableDestroyPointer.asFunction(isLeaf: true);

  final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<DiplomatWriteable> this_,
          )>> bufferWriteableDestroyPointer;

  late final ffi.Pointer<ffi.Uint8> Function(
    int size,
    int align,
  ) dartAlloc = dynamicLibrary.lookupFunction<
      ffi.Pointer<ffi.Uint8> Function(
        ffi.Size size,
        ffi.Size align,
      ),
      ffi.Pointer<ffi.Uint8> Function(
        int size,
        int align,
      )>(
    'diplomat_dart_alloc',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ffi.Uint8> ptr,
  ) dartFree = dartFreePointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ffi.Uint8> ptr,
          )>> dartFreePointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ffi.Uint8> ptr,
          )>>('diplomat_dart_free');

  final DiplomatWriteable Function(
    ffi.Pointer<ffi.Uint8> buf,
    int buf_size,
  ) simpleWriteable;
}
