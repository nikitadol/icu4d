// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _List {
  _List(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ffi.Pointer<ICU4XList> Function() create =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XList> Function(),
          ffi.Pointer<ICU4XList> Function()>(
    'ICU4XList_create',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XList> Function(
    int capacity,
  ) createWithCapacity = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XList> Function(
        ffi.Size capacity,
      ),
      ffi.Pointer<ICU4XList> Function(
        int capacity,
      )>(
    'ICU4XList_create_with_capacity',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XList> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XList> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XList> self,
          )>>('ICU4XList_destroy');

  late final int Function(
    ffi.Pointer<ICU4XList> self,
  ) len = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XList> self,
      ),
      int Function(
        ffi.Pointer<ICU4XList> self,
      )>(
    'ICU4XList_len',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XList> self,
    ffi.Pointer<ffi.Uint8> val_data,
    int val_len,
  ) push = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XList> self,
        ffi.Pointer<ffi.Uint8> val_data,
        ffi.Size val_len,
      ),
      void Function(
        ffi.Pointer<ICU4XList> self,
        ffi.Pointer<ffi.Uint8> val_data,
        int val_len,
      )>(
    'ICU4XList_push',
    isLeaf: true,
  );
}
