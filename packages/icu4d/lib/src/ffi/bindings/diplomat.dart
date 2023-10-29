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
        dartAlloc = dynamicLibrary.lookupFunction<
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
        ),
        dartRealloc = dynamicLibrary.lookupFunction<
            ffi.Pointer<ffi.NativeType> Function(
              ffi.Pointer<ffi.NativeType> ptr,
              ffi.Size size,
            ),
            ffi.Pointer<ffi.NativeType> Function(
              ffi.Pointer<ffi.NativeType> ptr,
              int size,
            )>(
          'diplomat_dart_realloc',
          isLeaf: true,
        ),
        dartFreePointer = dynamicLibrary.lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                  ffi.Pointer<ffi.Uint8> ptr,
                )>>('diplomat_dart_free'),
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

  final ffi.Pointer<ffi.Uint8> Function(
    int size,
    int align,
  ) dartAlloc;

  late final void Function(
    ffi.Pointer<ffi.Uint8> ptr,
  ) dartFree = dartFreePointer.asFunction(isLeaf: true);

  final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ffi.Uint8> ptr,
          )>> dartFreePointer;

  final ffi.Pointer<ffi.NativeType> Function(
    ffi.Pointer<ffi.NativeType> ptr,
    int size,
  ) dartRealloc;

  final DiplomatWriteable Function(
    ffi.Pointer<ffi.Uint8> buf,
    int buf_size,
  ) simpleWriteable;
}
