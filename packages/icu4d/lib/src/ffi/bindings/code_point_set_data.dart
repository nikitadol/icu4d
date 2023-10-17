// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _CodePointSetData {
  _CodePointSetData(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final bool Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
    int cp,
  ) contains = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
        ffi.Uint32 cp,
      ),
      bool Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
        int cp,
      )>(
    'ICU4XCodePointSetData_contains',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
    int cp,
  ) contains32 = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
        ffi.Uint32 cp,
      ),
      bool Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
        int cp,
      )>(
    'ICU4XCodePointSetData_contains32',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
      )>(
    'ICU4XCodePointSetData_destroy',
    isLeaf: true,
  );

  late final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) iterRanges = dynamicLibrary.lookupFunction<
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
      ),
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
      )>(
    'ICU4XCodePointSetData_iter_ranges',
    isLeaf: true,
  );

  late final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) iterRangesComplemented = dynamicLibrary.lookupFunction<
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
      ),
      ffi.Pointer<CodePointRangeIterator> Function(
        ffi.Pointer<ICU4XCodePointSetData> self,
      )>(
    'ICU4XCodePointSetData_iter_ranges_complemented',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAlnum = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_alnum',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAlphabetic = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_alphabetic',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAsciiHexDigit = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_ascii_hex_digit',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiControl = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_bidi_control',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiMirrored = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_bidi_mirrored',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBlank = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_blank',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCaseIgnorable = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_case_ignorable',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCaseSensitive = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_case_sensitive',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCased = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_cased',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenCasefolded = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_changes_when_casefolded',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenCasemapped = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_changes_when_casemapped',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenLowercased = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_changes_when_lowercased',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenNfkcCasefolded = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_changes_when_nfkc_casefolded',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenTitlecased = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_changes_when_titlecased',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenUppercased = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_changes_when_uppercased',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDash = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_dash',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDefaultIgnorableCodePoint = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_default_ignorable_code_point',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDeprecated = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_deprecated',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDiacritic = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_diacritic',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmoji = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_emoji',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiComponent = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_emoji_component',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiModifier = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_emoji_modifier',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiModifierBase = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_emoji_modifier_base',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiPresentation = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_emoji_presentation',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadExtendedPictographic = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_extended_pictographic',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadExtender = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_extender',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ffi.Uint8> property_name_data,
    int property_name_len,
  ) loadForEcma262 = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ffi.Uint8> property_name_data,
        ffi.Size property_name_len,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ffi.Uint8> property_name_data,
        int property_name_len,
      )>(
    'ICU4XCodePointSetData_load_for_ecma262',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    int group,
  ) loadForGeneralCategoryGroup = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Uint32 group,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        int group,
      )>(
    'ICU4XCodePointSetData_load_for_general_category_group',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadFullCompositionExclusion = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_full_composition_exclusion',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraph = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_graph',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeBase = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_grapheme_base',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeExtend = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_grapheme_extend',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeLink = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_grapheme_link',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadHexDigit = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_hex_digit',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadHyphen = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_hyphen',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdContinue = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_id_continue',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdStart = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_id_start',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdeographic = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_ideographic',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdsBinaryOperator = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_ids_binary_operator',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdsTrinaryOperator = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_ids_trinary_operator',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadJoinControl = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_join_control',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLogicalOrderException = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_logical_order_exception',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLowercase = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_lowercase',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadMath = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_math',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfcInert = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_nfc_inert',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfdInert = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_nfd_inert',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfkcInert = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_nfkc_inert',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfkdInert = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_nfkd_inert',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNoncharacterCodePoint = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_noncharacter_code_point',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPatternSyntax = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_pattern_syntax',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPatternWhiteSpace = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_pattern_white_space',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPrependedConcatenationMark = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_prepended_concatenation_mark',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPrint = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_print',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadQuotationMark = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_quotation_mark',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadRadical = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_radical',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadRegionalIndicator = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_regional_indicator',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSegmentStarter = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_segment_starter',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceTerminal = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_sentence_terminal',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSoftDotted = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_soft_dotted',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadTerminalPunctuation = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_terminal_punctuation',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadUnifiedIdeograph = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_unified_ideograph',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadUppercase = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_uppercase',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadVariationSelector = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_variation_selector',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadWhiteSpace = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_white_space',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadXdigit = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_xdigit',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadXidContinue = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_xid_continue',
    isLeaf: true,
  );

  late final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadXidStart = dynamicLibrary.lookupFunction<
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XCodePointSetDataOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XCodePointSetData_load_xid_start',
    isLeaf: true,
  );
}
