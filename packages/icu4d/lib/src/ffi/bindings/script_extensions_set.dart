// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ScriptExtensionsSet {
  _ScriptExtensionsSet(this.dynamicLibrary)
      : contains = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              ffi.Uint16 script,
            ),
            bool Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              int script,
            )>(
          'ICU4XScriptExtensionsSet_contains',
          isLeaf: true,
        ),
        count = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            ),
            int Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            )>(
          'ICU4XScriptExtensionsSet_count',
          isLeaf: true,
        ),
        scriptAt = dynamicLibrary.lookupFunction<
            ResultUint16OrTOrVoid Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              ffi.Size index,
            ),
            ResultUint16OrTOrVoid Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
              int index,
            )>(
          'ICU4XScriptExtensionsSet_script_at',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            ),
            void Function(
              ffi.Pointer<ICU4XScriptExtensionsSet> self,
            )>(
          'ICU4XScriptExtensionsSet_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final bool Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
    int script,
  ) contains;

  final int Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
  ) count;

  final void Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
  ) destroy;

  final ResultUint16OrTOrVoid Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
    int index,
  ) scriptAt;
}
