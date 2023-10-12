// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _UnicodeSetData {
  _UnicodeSetData(ffi.DynamicLibrary dynamicLibrary)
      : contains = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
            ),
            bool Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
            )>('ICU4XUnicodeSetData_contains'),
        containsChar = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
              ffi.Uint32 cp,
            ),
            bool Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
              int cp,
            )>('ICU4XUnicodeSetData_contains_char'),
        contains32 = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
              ffi.Uint32 cp,
            ),
            bool Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
              int cp,
            )>('ICU4XUnicodeSetData_contains32'),
        loadBasicEmoji = dynamicLibrary.lookupFunction<
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XUnicodeSetData_load_basic_emoji'),
        loadExemplarsMain = dynamicLibrary.lookupFunction<
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XUnicodeSetData_load_exemplars_main'),
        loadExemplarsAuxiliary = dynamicLibrary.lookupFunction<
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XUnicodeSetData_load_exemplars_auxiliary'),
        loadExemplarsPunctuation = dynamicLibrary.lookupFunction<
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XUnicodeSetData_load_exemplars_punctuation'),
        loadExemplarsNumbers = dynamicLibrary.lookupFunction<
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XUnicodeSetData_load_exemplars_numbers'),
        loadExemplarsIndex = dynamicLibrary.lookupFunction<
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XUnicodeSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XUnicodeSetData_load_exemplars_index'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
            ),
            void Function(
              ffi.Pointer<ICU4XUnicodeSetData> self,
            )>('ICU4XUnicodeSetData_destroy');

  final bool Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) contains;

  final bool Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
    int cp,
  ) containsChar;

  final bool Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
    int cp,
  ) contains32;

  final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBasicEmoji;

  final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsMain;

  final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsAuxiliary;

  final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsPunctuation;

  final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsNumbers;

  final ResultICU4XUnicodeSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) loadExemplarsIndex;

  final void Function(
    ffi.Pointer<ICU4XUnicodeSetData> self,
  ) destroy;
}
