// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ScriptExtensionsSet {
  _ScriptExtensionsSet(ffi.DynamicLibrary dynamicLibrary)
      : contains = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              ffi.Uint16 script,
            ),
            bool Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              int script,
            )>('ICU4XScriptExtensionsSet_contains'),
        count = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            ),
            int Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            )>('ICU4XScriptExtensionsSet_count'),
        scriptAt = dynamicLibrary.lookupFunction<
            ResultUint16OrTOrVoid Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              ffi.Size index,
            ),
            ResultUint16OrTOrVoid Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              int index,
            )>('ICU4XScriptExtensionsSet_script_at'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            ),
            void Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            )>('ICU4XScriptExtensionsSet_destroy');

  final bool Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
    int script,
  ) contains;

  final int Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
  ) count;

  final ResultUint16OrTOrVoid Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
    int index,
  ) scriptAt;

  final void Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
  ) destroy;
}
