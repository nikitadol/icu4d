// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _CodePointMapData8 {
  _CodePointMapData8(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
      )>(
    'ICU4XCodePointMapData8_destroy',
    isLeaf: true,
  );

  late final int Function(
    int gc,
  ) generalCategoryToMask = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Uint8 gc,
      ),
      int Function(
        int gc,
      )>(
    'ICU4XCodePointMapData8_general_category_to_mask',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int cp,
  ) get = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        ffi.Uint32 cp,
      ),
      int Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        int cp,
      )>(
    'ICU4XCodePointMapData8_get',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int cp,
  ) get32 = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        ffi.Uint32 cp,
      ),
      int Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        int cp,
      )>(
    'ICU4XCodePointMapData8_get32',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XCodePointSetData> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int value,
  ) getSetForValue = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XCodePointSetData> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        ffi.Uint8 value,
      ),
      ffi.Pointer<ICU4XCodePointSetData> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        int value,
      )>(
    'ICU4XCodePointMapData8_get_set_for_value',
    isLeaf: true,
  );

  late final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int mask,
  ) iterRangesForMask = dynamicLibrary.lookupFunction<
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        ffi.Uint32 mask,
      ),
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        int mask,
      )>(
    'ICU4XCodePointMapData8_iter_ranges_for_mask',
    isLeaf: true,
  );

  late final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int value,
  ) iterRangesForValue = dynamicLibrary.lookupFunction<
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        ffi.Uint8 value,
      ),
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        int value,
      )>(
    'ICU4XCodePointMapData8_iter_ranges_for_value',
    isLeaf: true,
  );

  late final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int value,
  ) iterRangesForValueComplemented = dynamicLibrary.lookupFunction<
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        ffi.Uint8 value,
      ),
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointMapData8> self,
        int value,
      )>(
    'ICU4XCodePointMapData8_iter_ranges_for_value_complemented',
    isLeaf: true,
  );

  late final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiClass = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointMapData8_load_bidi_class',
    isLeaf: true,
  );

  late final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEastAsianWidth = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointMapData8_load_east_asian_width',
    isLeaf: true,
  );

  late final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGeneralCategory = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointMapData8_load_general_category',
    isLeaf: true,
  );

  late final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLineBreak = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointMapData8_load_line_break',
    isLeaf: true,
  );

  late final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceBreak = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointMapData8_load_sentence_break',
    isLeaf: true,
  );

  late final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadWordBreak = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointMapData8_load_word_break',
    isLeaf: true,
  );

  late final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) tryGraphemeClusterBreak = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointMapData8OrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointMapData8_try_grapheme_cluster_break',
    isLeaf: true,
  );
}
