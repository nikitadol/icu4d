// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _PropertyValueNameToEnumMapper {
  _PropertyValueNameToEnumMapper(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
          )>>('ICU4XPropertyValueNameToEnumMapper_destroy');

  late final int Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getLoose = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> self,
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) getStrict = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiClass = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_bidi_class',
    isLeaf: true,
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEastAsianWidth = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_east_asian_width',
    isLeaf: true,
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGeneralCategory = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_general_category',
    isLeaf: true,
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeClusterBreak = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_grapheme_cluster_break',
    isLeaf: true,
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLineBreak = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_line_break',
    isLeaf: true,
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadScript = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_script',
    isLeaf: true,
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceBreak = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_sentence_break',
    isLeaf: true,
  );

  late final ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadWordBreak = dynamicLibrary.lookupFunction<
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XPropertyValueNameToEnumMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XPropertyValueNameToEnumMapper_load_word_break',
    isLeaf: true,
  );
}
