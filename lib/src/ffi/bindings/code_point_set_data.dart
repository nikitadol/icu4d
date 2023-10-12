// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CodePointSetData {
  _CodePointSetData(this.dynamicLibrary)
      : contains = dynamicLibrary.lookupFunction<
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
        ),
        contains32 = dynamicLibrary.lookupFunction<
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
        ),
        iterRanges = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            )>(
          'ICU4XCodePointSetData_iter_ranges',
          isLeaf: true,
        ),
        iterRangesComplemented = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            )>(
          'ICU4XCodePointSetData_iter_ranges_complemented',
          isLeaf: true,
        ),
        loadForGeneralCategoryGroup = dynamicLibrary.lookupFunction<
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
        ),
        loadAsciiHexDigit = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_ascii_hex_digit',
          isLeaf: true,
        ),
        loadAlnum = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_alnum',
          isLeaf: true,
        ),
        loadAlphabetic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_alphabetic',
          isLeaf: true,
        ),
        loadBidiControl = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_bidi_control',
          isLeaf: true,
        ),
        loadBidiMirrored = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_bidi_mirrored',
          isLeaf: true,
        ),
        loadBlank = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_blank',
          isLeaf: true,
        ),
        loadCased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_cased',
          isLeaf: true,
        ),
        loadCaseIgnorable = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_case_ignorable',
          isLeaf: true,
        ),
        loadFullCompositionExclusion = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_full_composition_exclusion',
          isLeaf: true,
        ),
        loadChangesWhenCasefolded = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_changes_when_casefolded',
          isLeaf: true,
        ),
        loadChangesWhenCasemapped = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_changes_when_casemapped',
          isLeaf: true,
        ),
        loadChangesWhenNfkcCasefolded = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_changes_when_nfkc_casefolded',
          isLeaf: true,
        ),
        loadChangesWhenLowercased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_changes_when_lowercased',
          isLeaf: true,
        ),
        loadChangesWhenTitlecased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_changes_when_titlecased',
          isLeaf: true,
        ),
        loadChangesWhenUppercased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_changes_when_uppercased',
          isLeaf: true,
        ),
        loadDash = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_dash',
          isLeaf: true,
        ),
        loadDeprecated = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_deprecated',
          isLeaf: true,
        ),
        loadDefaultIgnorableCodePoint = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_default_ignorable_code_point',
          isLeaf: true,
        ),
        loadDiacritic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_diacritic',
          isLeaf: true,
        ),
        loadEmojiModifierBase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_emoji_modifier_base',
          isLeaf: true,
        ),
        loadEmojiComponent = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_emoji_component',
          isLeaf: true,
        ),
        loadEmojiModifier = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_emoji_modifier',
          isLeaf: true,
        ),
        loadEmoji = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_emoji',
          isLeaf: true,
        ),
        loadEmojiPresentation = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_emoji_presentation',
          isLeaf: true,
        ),
        loadExtender = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_extender',
          isLeaf: true,
        ),
        loadExtendedPictographic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_extended_pictographic',
          isLeaf: true,
        ),
        loadGraph = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_graph',
          isLeaf: true,
        ),
        loadGraphemeBase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_grapheme_base',
          isLeaf: true,
        ),
        loadGraphemeExtend = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_grapheme_extend',
          isLeaf: true,
        ),
        loadGraphemeLink = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_grapheme_link',
          isLeaf: true,
        ),
        loadHexDigit = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_hex_digit',
          isLeaf: true,
        ),
        loadHyphen = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_hyphen',
          isLeaf: true,
        ),
        loadIdContinue = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_id_continue',
          isLeaf: true,
        ),
        loadIdeographic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_ideographic',
          isLeaf: true,
        ),
        loadIdStart = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_id_start',
          isLeaf: true,
        ),
        loadIdsBinaryOperator = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_ids_binary_operator',
          isLeaf: true,
        ),
        loadIdsTrinaryOperator = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_ids_trinary_operator',
          isLeaf: true,
        ),
        loadJoinControl = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_join_control',
          isLeaf: true,
        ),
        loadLogicalOrderException = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_logical_order_exception',
          isLeaf: true,
        ),
        loadLowercase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_lowercase',
          isLeaf: true,
        ),
        loadMath = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_math',
          isLeaf: true,
        ),
        loadNoncharacterCodePoint = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_noncharacter_code_point',
          isLeaf: true,
        ),
        loadNfcInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_nfc_inert',
          isLeaf: true,
        ),
        loadNfdInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_nfd_inert',
          isLeaf: true,
        ),
        loadNfkcInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_nfkc_inert',
          isLeaf: true,
        ),
        loadNfkdInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_nfkd_inert',
          isLeaf: true,
        ),
        loadPatternSyntax = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_pattern_syntax',
          isLeaf: true,
        ),
        loadPatternWhiteSpace = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_pattern_white_space',
          isLeaf: true,
        ),
        loadPrependedConcatenationMark = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_prepended_concatenation_mark',
          isLeaf: true,
        ),
        loadPrint = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_print',
          isLeaf: true,
        ),
        loadQuotationMark = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_quotation_mark',
          isLeaf: true,
        ),
        loadRadical = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_radical',
          isLeaf: true,
        ),
        loadRegionalIndicator = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_regional_indicator',
          isLeaf: true,
        ),
        loadSoftDotted = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_soft_dotted',
          isLeaf: true,
        ),
        loadSegmentStarter = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_segment_starter',
          isLeaf: true,
        ),
        loadCaseSensitive = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_case_sensitive',
          isLeaf: true,
        ),
        loadSentenceTerminal = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_sentence_terminal',
          isLeaf: true,
        ),
        loadTerminalPunctuation = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_terminal_punctuation',
          isLeaf: true,
        ),
        loadUnifiedIdeograph = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_unified_ideograph',
          isLeaf: true,
        ),
        loadUppercase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_uppercase',
          isLeaf: true,
        ),
        loadVariationSelector = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_variation_selector',
          isLeaf: true,
        ),
        loadWhiteSpace = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_white_space',
          isLeaf: true,
        ),
        loadXdigit = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_xdigit',
          isLeaf: true,
        ),
        loadXidContinue = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_xid_continue',
          isLeaf: true,
        ),
        loadXidStart = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointSetData_load_xid_start',
          isLeaf: true,
        ),
        loadForEcma262 = dynamicLibrary.lookupFunction<
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
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            )>(
          'ICU4XCodePointSetData_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final bool Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
    int cp,
  ) contains;

  final bool Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
    int cp,
  ) contains32;

  final void Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) destroy;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) iterRanges;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) iterRangesComplemented;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAlnum;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAlphabetic;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAsciiHexDigit;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiControl;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBidiMirrored;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadBlank;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCaseIgnorable;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCaseSensitive;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCased;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenCasefolded;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenCasemapped;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenLowercased;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenNfkcCasefolded;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenTitlecased;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenUppercased;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDash;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDefaultIgnorableCodePoint;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDeprecated;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDiacritic;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmoji;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiComponent;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiModifier;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiModifierBase;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiPresentation;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadExtendedPictographic;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadExtender;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ffi.Uint8> property_name_data,
    int property_name_len,
  ) loadForEcma262;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    int group,
  ) loadForGeneralCategoryGroup;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadFullCompositionExclusion;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraph;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeBase;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeExtend;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGraphemeLink;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadHexDigit;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadHyphen;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdContinue;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdStart;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdeographic;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdsBinaryOperator;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdsTrinaryOperator;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadJoinControl;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLogicalOrderException;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadLowercase;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadMath;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfcInert;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfdInert;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfkcInert;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNfkdInert;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadNoncharacterCodePoint;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPatternSyntax;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPatternWhiteSpace;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPrependedConcatenationMark;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadPrint;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadQuotationMark;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadRadical;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadRegionalIndicator;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSegmentStarter;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceTerminal;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSoftDotted;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadTerminalPunctuation;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadUnifiedIdeograph;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadUppercase;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadVariationSelector;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadWhiteSpace;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadXdigit;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadXidContinue;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadXidStart;
}
