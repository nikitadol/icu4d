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
        alloc = dynamicLibrary.lookupFunction<
            ffi.Pointer<ffi.Uint8> Function(
              ffi.Size size,
              ffi.Size align,
            ),
            ffi.Pointer<ffi.Uint8> Function(
              int size,
              int align,
            )>(
          'diplomat_alloc',
          isLeaf: true,
        ),
        free = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Uint8> ptr,
              ffi.Size size,
              ffi.Size align,
            ),
            void Function(
              ffi.Pointer<ffi.Uint8> ptr,
              int size,
              int align,
            )>(
          'diplomat_free',
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

  final ffi.Pointer<ffi.Uint8> Function(
    int size,
    int align,
  ) alloc;

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

  final void Function(
    ffi.Pointer<ffi.Uint8> ptr,
    int size,
    int align,
  ) free;

  final DiplomatWriteable Function(
    ffi.Pointer<ffi.Uint8> buf,
    int buf_size,
  ) simpleWriteable;
}
