// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ReorderedIndexMap {
  _ReorderedIndexMap(ffi.DynamicLibrary dynamicLibrary)
      : asSlice = dynamicLibrary.lookupFunction<
            DiplomatUsizeView Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
            ),
            DiplomatUsizeView Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
            )>('ICU4XReorderedIndexMap_as_slice'),
        len = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
            ),
            int Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
            )>('ICU4XReorderedIndexMap_len'),
        get = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
              ffi.Size index,
            ),
            int Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
              int index,
            )>('ICU4XReorderedIndexMap_get'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
            ),
            void Function(
              ffi.Pointer<ICU4XReorderedIndexMap> self,
            )>('ICU4XReorderedIndexMap_destroy');

  final DiplomatUsizeView Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
  ) asSlice;

  final int Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
  ) len;

  final int Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
    int index,
  ) get;

  final void Function(
    ffi.Pointer<ICU4XReorderedIndexMap> self,
  ) destroy;
}
