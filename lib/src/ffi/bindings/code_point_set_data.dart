// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CodePointSetData {
  _CodePointSetData(ffi.DynamicLibrary dynamicLibrary)
      : contains = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
              ffi.Uint32 cp,
            ),
            bool Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
              int cp,
            )>('ICU4XCodePointSetData_contains'),
        contains32 = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
              ffi.Uint32 cp,
            ),
            bool Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
              int cp,
            )>('ICU4XCodePointSetData_contains32'),
        iterRanges = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            )>('ICU4XCodePointSetData_iter_ranges'),
        iterRangesComplemented = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            )>('ICU4XCodePointSetData_iter_ranges_complemented'),
        loadForGeneralCategoryGroup = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Uint32 group,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              int group,
            )>('ICU4XCodePointSetData_load_for_general_category_group'),
        loadAsciiHexDigit = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_ascii_hex_digit'),
        loadAlnum = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_alnum'),
        loadAlphabetic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_alphabetic'),
        loadBidiControl = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_bidi_control'),
        loadBidiMirrored = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_bidi_mirrored'),
        loadBlank = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_blank'),
        loadCased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_cased'),
        loadCaseIgnorable = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_case_ignorable'),
        loadFullCompositionExclusion = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_full_composition_exclusion'),
        loadChangesWhenCasefolded = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_changes_when_casefolded'),
        loadChangesWhenCasemapped = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_changes_when_casemapped'),
        loadChangesWhenNfkcCasefolded = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_changes_when_nfkc_casefolded'),
        loadChangesWhenLowercased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_changes_when_lowercased'),
        loadChangesWhenTitlecased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_changes_when_titlecased'),
        loadChangesWhenUppercased = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_changes_when_uppercased'),
        loadDash = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_dash'),
        loadDeprecated = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_deprecated'),
        loadDefaultIgnorableCodePoint = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_default_ignorable_code_point'),
        loadDiacritic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_diacritic'),
        loadEmojiModifierBase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_emoji_modifier_base'),
        loadEmojiComponent = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_emoji_component'),
        loadEmojiModifier = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_emoji_modifier'),
        loadEmoji = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_emoji'),
        loadEmojiPresentation = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_emoji_presentation'),
        loadExtender = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_extender'),
        loadExtendedPictographic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_extended_pictographic'),
        loadGraph = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_graph'),
        loadGraphemeBase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_grapheme_base'),
        loadGraphemeExtend = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_grapheme_extend'),
        loadGraphemeLink = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_grapheme_link'),
        loadHexDigit = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_hex_digit'),
        loadHyphen = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_hyphen'),
        loadIdContinue = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_id_continue'),
        loadIdeographic = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_ideographic'),
        loadIdStart = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_id_start'),
        loadIdsBinaryOperator = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_ids_binary_operator'),
        loadIdsTrinaryOperator = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_ids_trinary_operator'),
        loadJoinControl = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_join_control'),
        loadLogicalOrderException = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_logical_order_exception'),
        loadLowercase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_lowercase'),
        loadMath = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_math'),
        loadNoncharacterCodePoint = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_noncharacter_code_point'),
        loadNfcInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_nfc_inert'),
        loadNfdInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_nfd_inert'),
        loadNfkcInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_nfkc_inert'),
        loadNfkdInert = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_nfkd_inert'),
        loadPatternSyntax = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_pattern_syntax'),
        loadPatternWhiteSpace = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_pattern_white_space'),
        loadPrependedConcatenationMark = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_prepended_concatenation_mark'),
        loadPrint = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_print'),
        loadQuotationMark = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_quotation_mark'),
        loadRadical = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_radical'),
        loadRegionalIndicator = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_regional_indicator'),
        loadSoftDotted = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_soft_dotted'),
        loadSegmentStarter = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_segment_starter'),
        loadCaseSensitive = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_case_sensitive'),
        loadSentenceTerminal = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_sentence_terminal'),
        loadTerminalPunctuation = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_terminal_punctuation'),
        loadUnifiedIdeograph = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_unified_ideograph'),
        loadUppercase = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_uppercase'),
        loadVariationSelector = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_variation_selector'),
        loadWhiteSpace = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_white_space'),
        loadXdigit = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_xdigit'),
        loadXidContinue = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_xid_continue'),
        loadXidStart = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointSetDataOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XCodePointSetData_load_xid_start'),
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
            )>('ICU4XCodePointSetData_load_for_ecma262'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCodePointSetData> self,
            )>('ICU4XCodePointSetData_destroy');

  final bool Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
    int cp,
  ) contains;

  final bool Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
    int cp,
  ) contains32;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) iterRanges;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) iterRangesComplemented;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    int group,
  ) loadForGeneralCategoryGroup;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAsciiHexDigit;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAlnum;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadAlphabetic;

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
  ) loadCased;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCaseIgnorable;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadFullCompositionExclusion;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenCasefolded;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenCasemapped;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenNfkcCasefolded;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadChangesWhenLowercased;

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
  ) loadDeprecated;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDefaultIgnorableCodePoint;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadDiacritic;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiModifierBase;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiComponent;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiModifier;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmoji;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadEmojiPresentation;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadExtender;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadExtendedPictographic;

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
  ) loadIdeographic;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadIdStart;

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
  ) loadNoncharacterCodePoint;

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
  ) loadSoftDotted;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSegmentStarter;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadCaseSensitive;

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSentenceTerminal;

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

  final ResultICU4XCodePointSetDataOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ffi.Uint8> property_name_data,
    int property_name_len,
  ) loadForEcma262;

  final void Function(
    ffi.Pointer<ICU4XCodePointSetData> self,
  ) destroy;
}
