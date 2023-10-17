// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _CaseMapCloser {
  _CaseMapCloser(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XCaseMapCloser> self,
    int c,
    ffi.Pointer<ICU4XCodePointSetBuilder> builder,
  ) addCaseClosureTo = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCaseMapCloser> self,
        ffi.Uint32 c,
        ffi.Pointer<ICU4XCodePointSetBuilder> builder,
      ),
      void Function(
        ffi.Pointer<ICU4XCaseMapCloser> self,
        int c,
        ffi.Pointer<ICU4XCodePointSetBuilder> builder,
      )>(
    'ICU4XCaseMapCloser_add_case_closure_to',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XCaseMapCloser> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<ICU4XCodePointSetBuilder> builder,
  ) addStringCaseClosureTo = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XCaseMapCloser> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<ICU4XCodePointSetBuilder> builder,
      ),
      bool Function(
        ffi.Pointer<ICU4XCaseMapCloser> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<ICU4XCodePointSetBuilder> builder,
      )>(
    'ICU4XCaseMapCloser_add_string_case_closure_to',
    isLeaf: true,
  );

  late final ResultICU4XCaseMapCloserOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XCaseMapCloserOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCaseMapCloserOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCaseMapCloser_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCaseMapCloser> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCaseMapCloser> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCaseMapCloser> self,
          )>>('ICU4XCaseMapCloser_destroy');
}
