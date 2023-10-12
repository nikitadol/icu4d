// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _PropertyValueNameToEnumMapper {
  _PropertyValueNameToEnumMapper(ffi.DynamicLibrary dynamicLibrary)
      : getStrict = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              ffi.Size name_len,
            ),
            int Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              int name_len,
            )>('ICU4XPropertyValueNameToEnumMapper_get_strict'),
        getLoose = dynamicLibrary.lookupFunction<
            ffi.Int16 Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              ffi.Size name_len,
            ),
            int Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
              ffi.Pointer<ffi.Uint8> name_data,
              int name_len,
            )>('ICU4XPropertyValueNameToEnumMapper_get_loose'),
        loadGeneralCategory = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XPropertyValueNameToEnumMapper_load_general_category'),
        loadBidiClass = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XPropertyValueNameToEnumMapper_load_bidi_class'),
        loadEastAsianWidth = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XPropertyValueNameToEnumMapper_load_east_asian_width'),
        loadLineBreak = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XPropertyValueNameToEnumMapper_load_line_break'),
        loadGraphemeClusterBreak = dynamicLibrary.lookupFunction<
                ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
                  ffi.Pointer<ICU4XDataProvider> provider,
                ),
                ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
                  ffi.Pointer<ICU4XDataProvider> provider,
                )>(
            'ICU4XPropertyValueNameToEnumMapper_load_grapheme_cluster_break'),
        loadWordBreak = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XPropertyValueNameToEnumMapper_load_word_break'),
        loadSentenceBreak = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XPropertyValueNameToEnumMapper_load_sentence_break'),
        loadScript = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XPropertyValueNameToEnumMapper_load_script'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
            ),
            void Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
            )>('ICU4XPropertyValueNameToEnumMapper_destroy');

  final int Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getStrict;

  final int Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getLoose;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGeneralCategory;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiClass;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEastAsianWidth;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLineBreak;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeClusterBreak;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadWordBreak;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceBreak;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadScript;

  final void Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
  ) destroy;
}
