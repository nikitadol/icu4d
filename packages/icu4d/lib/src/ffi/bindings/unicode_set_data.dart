// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _UnicodeSetData {
  _UnicodeSetData(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final bool Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) contains = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
      ),
      bool Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
      )>(
    'ICU4XUnicodeSetData_contains',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
    int cp,
  ) contains32 = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
        ffi.Uint32 cp,
      ),
      bool Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
        int cp,
      )>(
    'ICU4XUnicodeSetData_contains32',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
    int cp,
  ) containsChar = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
        ffi.Uint32 cp,
      ),
      bool Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
        int cp,
      )>(
    'ICU4XUnicodeSetData_contains_char',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
      ),
      void Function(
        ffi.Pointer<ICU4XUnicodeSetData> self,
      )>(
    'ICU4XUnicodeSetData_destroy',
    isLeaf: true,
  );

  late final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBasicEmoji = dynamicLibrary.lookupFunction<
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XUnicodeSetData_load_basic_emoji',
    isLeaf: true,
  );

  late final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsAuxiliary = dynamicLibrary.lookupFunction<
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XUnicodeSetData_load_exemplars_auxiliary',
    isLeaf: true,
  );

  late final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsIndex = dynamicLibrary.lookupFunction<
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XUnicodeSetData_load_exemplars_index',
    isLeaf: true,
  );

  late final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsMain = dynamicLibrary.lookupFunction<
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XUnicodeSetData_load_exemplars_main',
    isLeaf: true,
  );

  late final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsNumbers = dynamicLibrary.lookupFunction<
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XUnicodeSetData_load_exemplars_numbers',
    isLeaf: true,
  );

  late final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsPunctuation = dynamicLibrary.lookupFunction<
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XUnicodeSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XUnicodeSetData_load_exemplars_punctuation',
    isLeaf: true,
  );
}
