// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _ScriptExtensionsSet {
  _ScriptExtensionsSet(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final bool Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
    int script,
  ) contains = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
  ) count = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XScriptExtensionsSet> self,
      ),
      int Function(
        ffi.Pointer<ICU4XScriptExtensionsSet> self,
      )>(
    'ICU4XScriptExtensionsSet_count',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XScriptExtensionsSet> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XScriptExtensionsSet> self,
          )>>('ICU4XScriptExtensionsSet_destroy');

  late final ResultUint16OrTOrVoid Function(
    ffi.Pointer<ICU4XScriptExtensionsSet> self,
    int index,
  ) scriptAt = dynamicLibrary.lookupFunction<
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
  );
}
