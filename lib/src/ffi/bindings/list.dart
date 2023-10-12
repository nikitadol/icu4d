// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _List {
  _List(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XList> Function(),
            ffi.Pointer<ICU4XList> Function()>('ICU4XList_create'),
        createWithCapacity = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XList> Function(
              ffi.Size capacity,
            ),
            ffi.Pointer<ICU4XList> Function(
              int capacity,
            )>('ICU4XList_create_with_capacity'),
        push = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XList> self,
              ffi.Pointer<ffi.Uint8> val_data,
              ffi.Size val_len,
            ),
            void Function(
              ffi.Pointer<ICU4XList> self,
              ffi.Pointer<ffi.Uint8> val_data,
              int val_len,
            )>('ICU4XList_push'),
        len = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XList> self,
            ),
            int Function(
              ffi.Pointer<ICU4XList> self,
            )>('ICU4XList_len'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XList> self,
            ),
            void Function(
              ffi.Pointer<ICU4XList> self,
            )>('ICU4XList_destroy');

  final ffi.Pointer<ICU4XList> Function() create;

  final ffi.Pointer<ICU4XList> Function(
    int capacity,
  ) createWithCapacity;

  final void Function(
    ffi.Pointer<ICU4XList> self,
    ffi.Pointer<ffi.Uint8> val_data,
    int val_len,
  ) push;

  final int Function(
    ffi.Pointer<ICU4XList> self,
  ) len;

  final void Function(
    ffi.Pointer<ICU4XList> self,
  ) destroy;
}
