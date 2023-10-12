// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ScriptWithExtensions {
  _ScriptWithExtensions(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XScriptWithExtensionsOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XScriptWithExtensionsOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XScriptWithExtensions_create'),
        getScriptVal = dynamicLibrary.lookupFunction<
            ffi.Uint16 Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
              ffi.Uint32 code_point,
            ),
            int Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
              int code_point,
            )>('ICU4XScriptWithExtensions_get_script_val'),
        hasScript = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
              ffi.Uint32 code_point,
              ffi.Uint16 script,
            ),
            bool Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
              int code_point,
              int script,
            )>('ICU4XScriptWithExtensions_has_script'),
        asBorrowed = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
            ),
            ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
            )>('ICU4XScriptWithExtensions_as_borrowed'),
        iterRangesForScript = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
              ffi.Uint16 script,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
              int script,
            )>('ICU4XScriptWithExtensions_iter_ranges_for_script'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
            ),
            void Function(
              ffi.Pointer<ICU4XScriptWithExtensions> self,
            )>('ICU4XScriptWithExtensions_destroy');

  final ResultICU4XScriptWithExtensionsOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final int Function(
    ffi.Pointer<ICU4XScriptWithExtensions> self,
    int code_point,
  ) getScriptVal;

  final bool Function(
    ffi.Pointer<ICU4XScriptWithExtensions> self,
    int code_point,
    int script,
  ) hasScript;

  final ffi.Pointer<ICU4XScriptWithExtensionsBorrowed> Function(
    ffi.Pointer<ICU4XScriptWithExtensions> self,
  ) asBorrowed;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XScriptWithExtensions> self,
    int script,
  ) iterRangesForScript;

  final void Function(
    ffi.Pointer<ICU4XScriptWithExtensions> self,
  ) destroy;
}
