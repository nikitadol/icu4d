// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Diplomat {
  _Diplomat(ffi.DynamicLibrary dynamicLibrary)
      : simpleWriteable = dynamicLibrary.lookupFunction<
            DiplomatWriteable Function(
              ffi.Pointer<ffi.Uint8> buf,
              ffi.Size buf_size,
            ),
            DiplomatWriteable Function(
              ffi.Pointer<ffi.Uint8> buf,
              int buf_size,
            )>('diplomat_simple_writeable'),
        alloc = dynamicLibrary.lookupFunction<
            ffi.Pointer<ffi.Uint8> Function(
              ffi.Size size,
              ffi.Size align,
            ),
            ffi.Pointer<ffi.Uint8> Function(
              int size,
              int align,
            )>('diplomat_alloc'),
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
            )>('diplomat_free'),
        bufferWriteableCreate = dynamicLibrary.lookupFunction<
            ffi.Pointer<DiplomatWriteable> Function(
              ffi.Size cap,
            ),
            ffi.Pointer<DiplomatWriteable> Function(
              int cap,
            )>('diplomat_buffer_writeable_create'),
        bufferWriteableDestroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<DiplomatWriteable> this_,
            ),
            void Function(
              ffi.Pointer<DiplomatWriteable> this_,
            )>('diplomat_buffer_writeable_destroy');

  final DiplomatWriteable Function(
    ffi.Pointer<ffi.Uint8> buf,
    int buf_size,
  ) simpleWriteable;

  final ffi.Pointer<ffi.Uint8> Function(
    int size,
    int align,
  ) alloc;

  final void Function(
    ffi.Pointer<ffi.Uint8> ptr,
    int size,
    int align,
  ) free;

  final ffi.Pointer<DiplomatWriteable> Function(
    int cap,
  ) bufferWriteableCreate;

  final void Function(
    ffi.Pointer<DiplomatWriteable> this_,
  ) bufferWriteableDestroy;
}
