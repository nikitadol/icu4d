// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CodePointMapData8 {
  _CodePointMapData8(ffi.DynamicLibrary dynamicLibrary)
      : get = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              ffi.Uint32 cp,
            ),
            int Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              int cp,
            )>('ICU4XCodePointMapData8_get'),
        get32 = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              ffi.Uint32 cp,
            ),
            int Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              int cp,
            )>('ICU4XCodePointMapData8_get32'),
        generalCategoryToMask = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Uint8 gc,
            ),
            int Function(
              int gc,
            )>('ICU4XCodePointMapData8_general_category_to_mask'),
        iterRangesForValue = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              ffi.Uint8 value,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              int value,
            )>('ICU4XCodePointMapData8_iter_ranges_for_value'),
        iterRangesForValueComplemented = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              ffi.Uint8 value,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              int value,
            )>('ICU4XCodePointMapData8_iter_ranges_for_value_complemented'),
        iterRangesForMask = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              ffi.Uint32 mask,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              int mask,
            )>('ICU4XCodePointMapData8_iter_ranges_for_mask'),
        getSetForValue = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCodePointSetData> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              ffi.Uint8 value,
            ),
            ffi.Pointer<ICU4XCodePointSetData> Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
              int value,
            )>('ICU4XCodePointMapData8_get_set_for_value'),
        loadGeneralCategory = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointMapData8_load_general_category'),
        loadBidiClass = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointMapData8_load_bidi_class'),
        loadEastAsianWidth = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointMapData8_load_east_asian_width'),
        loadLineBreak = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointMapData8_load_line_break'),
        tryGraphemeClusterBreak = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointMapData8_try_grapheme_cluster_break'),
        loadWordBreak = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointMapData8_load_word_break'),
        loadSentenceBreak = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData8OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointMapData8_load_sentence_break'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCodePointMapData8> self,
            )>('ICU4XCodePointMapData8_destroy');

  final int Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int cp,
  ) get;

  final int Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int cp,
  ) get32;

  final int Function(
    int gc,
  ) generalCategoryToMask;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int value,
  ) iterRangesForValue;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int value,
  ) iterRangesForValueComplemented;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int mask,
  ) iterRangesForMask;

  final ffi.Pointer<ICU4XCodePointSetData> Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
    int value,
  ) getSetForValue;

  final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGeneralCategory;

  final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiClass;

  final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEastAsianWidth;

  final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLineBreak;

  final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) tryGraphemeClusterBreak;

  final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadWordBreak;

  final ResultICU4XCodePointMapData8OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceBreak;

  final void Function(
    ffi.Pointer<ICU4XCodePointMapData8> self,
  ) destroy;
}
