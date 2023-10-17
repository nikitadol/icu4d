// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _ReorderedIndexMap {
  _ReorderedIndexMap(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final DiplomatUsizeView Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
  ) asSlice = dynamicLibrary.lookupFunction<
      DiplomatUsizeView Function(
        ffi.Pointer<ICU4XReorderedIndexMap> self,
      ),
      DiplomatUsizeView Function(
        ffi.Pointer<ICU4XReorderedIndexMap> self,
      )>(
    'ICU4XReorderedIndexMap_as_slice',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XReorderedIndexMap> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XReorderedIndexMap> self,
          )>>('ICU4XReorderedIndexMap_destroy');

  late final int Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
    int index,
  ) get = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XReorderedIndexMap> self,
        ffi.Size index,
      ),
      int Function(
        ffi.Pointer<ICU4XReorderedIndexMap> self,
        int index,
      )>(
    'ICU4XReorderedIndexMap_get',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
  ) len = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XReorderedIndexMap> self,
      ),
      int Function(
        ffi.Pointer<ICU4XReorderedIndexMap> self,
      )>(
    'ICU4XReorderedIndexMap_len',
    isLeaf: true,
  );
}
