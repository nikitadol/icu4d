// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ScriptWithExtensionsBorrowed {
  _ScriptWithExtensionsBorrowed(this.dynamicLibrary)
      : getScriptVal = dynamicLibrary.lookupFunction<
            ffi.Uint16 Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
              ffi.Uint32 code_point,
            ),
            int Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
              int code_point,
            )>(
          'ICU4XScriptWithExtensionsBorrowed_get_script_val',
          isLeaf: true,
        ),
        getScriptExtensionsVal = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XScriptExtensionsSet> Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
              ffi.Uint32 code_point,
            ),
            ffi.Pointer<ICU4XScriptExtensionsSet> Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
              int code_point,
            )>(
          'ICU4XScriptWithExtensionsBorrowed_get_script_extensions_val',
          isLeaf: true,
        ),
        hasScript = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
              ffi.Uint32 code_point,
              ffi.Uint16 script,
            ),
            bool Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
              int code_point,
              int script,
            )>(
          'ICU4XScriptWithExtensionsBorrowed_has_script',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
            ),
            void Function(
              ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
            )>(
          'ICU4XScriptWithExtensionsBorrowed_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
  ) destroy;

  final ffi.Pointer<ICU4XScriptExtensionsSet> Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
    int code_point,
  ) getScriptExtensionsVal;

  final int Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
    int code_point,
  ) getScriptVal;

  final bool Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
    int code_point,
    int script,
  ) hasScript;
}
