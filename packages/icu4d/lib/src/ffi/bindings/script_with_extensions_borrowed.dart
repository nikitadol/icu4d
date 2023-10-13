// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ScriptWithExtensionsBorrowed {
  _ScriptWithExtensionsBorrowed(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
      ),
      void Function(
        ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
      )>(
    'ICU4XScriptWithExtensionsBorrowed_destroy',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XCodePointSetData> Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
    int script,
  ) getScriptExtensionsSet = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XCodePointSetData> Function(
        ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
        ffi.Uint16 script,
      ),
      ffi.Pointer<ICU4XCodePointSetData> Function(
        ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
        int script,
      )>(
    'ICU4XScriptWithExtensionsBorrowed_get_script_extensions_set',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XScriptExtensionsSet> Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
    int code_point,
  ) getScriptExtensionsVal = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
    int code_point,
  ) getScriptVal = dynamicLibrary.lookupFunction<
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
  );

  late final bool Function(
    ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> self,
    int code_point,
    int script,
  ) hasScript = dynamicLibrary.lookupFunction<
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
  );
}
