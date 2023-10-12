// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _PropertyValueNameToEnumMapper {
  _PropertyValueNameToEnumMapper(this.dynamicLibrary)
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
            )>(
          'ICU4XPropertyValueNameToEnumMapper_get_strict',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XPropertyValueNameToEnumMapper_get_loose',
          isLeaf: true,
        ),
        loadGeneralCategory = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_general_category',
          isLeaf: true,
        ),
        loadBidiClass = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_bidi_class',
          isLeaf: true,
        ),
        loadEastAsianWidth = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_east_asian_width',
          isLeaf: true,
        ),
        loadLineBreak = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_line_break',
          isLeaf: true,
        ),
        loadGraphemeClusterBreak = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_grapheme_cluster_break',
          isLeaf: true,
        ),
        loadWordBreak = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_word_break',
          isLeaf: true,
        ),
        loadSentenceBreak = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_sentence_break',
          isLeaf: true,
        ),
        loadScript = dynamicLibrary.lookupFunction<
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_load_script',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
            ),
            void Function(
              ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
            )>(
          'ICU4XPropertyValueNameToEnumMapper_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getLoose;

  final int Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getStrict;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiClass;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEastAsianWidth;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGeneralCategory;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeClusterBreak;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLineBreak;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadScript;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceBreak;

  final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadWordBreak;
}
