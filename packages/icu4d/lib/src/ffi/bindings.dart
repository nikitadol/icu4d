// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `icu4x_bindings_generator`.
// ignore_for_file: library_private_types_in_public_api

import 'dart:ffi' as ffi;
import 'package:meta/meta.dart';
part 'bindings/any_calendar_kind.dart';
part 'bindings/bcp47_to_iana_mapper.dart';
part 'bindings/bidi.dart';
part 'bindings/bidi_info.dart';
part 'bindings/bidi_paragraph.dart';
part 'bindings/calendar.dart';
part 'bindings/canonical_combining_class_map.dart';
part 'bindings/canonical_composition.dart';
part 'bindings/canonical_decomposition.dart';
part 'bindings/case_map_closer.dart';
part 'bindings/case_mapper.dart';
part 'bindings/code_point_map_data16.dart';
part 'bindings/code_point_map_data8.dart';
part 'bindings/code_point_set_builder.dart';
part 'bindings/code_point_set_data.dart';
part 'bindings/collator.dart';
part 'bindings/collator_options_v1.dart';
part 'bindings/composing_normalizer.dart';
part 'bindings/custom_time_zone.dart';
part 'bindings/data_provider.dart';
part 'bindings/data_struct.dart';
part 'bindings/date.dart';
part 'bindings/date_formatter.dart';
part 'bindings/date_time.dart';
part 'bindings/date_time_formatter.dart';
part 'bindings/decomposed.dart';
part 'bindings/decomposing_normalizer.dart';
part 'bindings/diplomat.dart';
part 'bindings/display_names_options_v1.dart';
part 'bindings/enums.dart';
part 'bindings/fixed_decimal.dart';
part 'bindings/fixed_decimal_formatter.dart';
part 'bindings/general_category_name_to_mask_mapper.dart';
part 'bindings/grapheme_cluster_break_iterator_latin1.dart';
part 'bindings/grapheme_cluster_break_iterator_utf16.dart';
part 'bindings/grapheme_cluster_break_iterator_utf8.dart';
part 'bindings/grapheme_cluster_segmenter.dart';
part 'bindings/gregorian_date_formatter.dart';
part 'bindings/gregorian_date_time_formatter.dart';
part 'bindings/gregorian_zoned_date_time_formatter.dart';
part 'bindings/iana_to_bcp47_mapper.dart';
part 'bindings/iso_date.dart';
part 'bindings/iso_date_time.dart';
part 'bindings/iso_time_zone_options.dart';
part 'bindings/line_break_iterator_latin1.dart';
part 'bindings/line_break_iterator_utf16.dart';
part 'bindings/line_break_iterator_utf8.dart';
part 'bindings/line_break_options_v1.dart';
part 'bindings/line_segmenter.dart';
part 'bindings/list.dart';
part 'bindings/list_formatter.dart';
part 'bindings/locale.dart';
part 'bindings/locale_canonicalizer.dart';
part 'bindings/locale_directionality.dart';
part 'bindings/locale_display_names_formatter.dart';
part 'bindings/locale_expander.dart';
part 'bindings/locale_fallback_config.dart';
part 'bindings/locale_fallback_iterator.dart';
part 'bindings/locale_fallbacker.dart';
part 'bindings/locale_fallbacker_with_config.dart';
part 'bindings/logger.dart';
part 'bindings/metazone_calculator.dart';
part 'bindings/plural_categories.dart';
part 'bindings/plural_category.dart';
part 'bindings/plural_operands.dart';
part 'bindings/plural_rules.dart';
part 'bindings/property_value_name_to_enum_mapper.dart';
part 'bindings/region_display_names.dart';
part 'bindings/reordered_index_map.dart';
part 'bindings/script_extensions_set.dart';
part 'bindings/script_with_extensions.dart';
part 'bindings/script_with_extensions_borrowed.dart';
part 'bindings/sentence_break_iterator_latin1.dart';
part 'bindings/sentence_break_iterator_utf16.dart';
part 'bindings/sentence_break_iterator_utf8.dart';
part 'bindings/sentence_segmenter.dart';
part 'bindings/structures.dart';
part 'bindings/time.dart';
part 'bindings/time_formatter.dart';
part 'bindings/time_zone_formatter.dart';
part 'bindings/titlecase_mapper.dart';
part 'bindings/titlecase_options_v1.dart';
part 'bindings/unicode_set_data.dart';
part 'bindings/unions.dart';
part 'bindings/week_calculator.dart';
part 'bindings/week_of.dart';
part 'bindings/word_break_iterator_latin1.dart';
part 'bindings/word_break_iterator_utf16.dart';
part 'bindings/word_break_iterator_utf8.dart';
part 'bindings/word_segmenter.dart';
part 'bindings/zoned_date_time_formatter.dart';

final class Icu4XBindings {
  Icu4XBindings(this.dynamicLibrary)
      : anyCalendarKind = _AnyCalendarKind(dynamicLibrary),
        bcp47ToIanaMapper = _Bcp47ToIanaMapper(dynamicLibrary),
        bidi = _Bidi(dynamicLibrary),
        bidiInfo = _BidiInfo(dynamicLibrary),
        bidiParagraph = _BidiParagraph(dynamicLibrary),
        calendar = _Calendar(dynamicLibrary),
        canonicalCombiningClassMap =
            _CanonicalCombiningClassMap(dynamicLibrary),
        canonicalComposition = _CanonicalComposition(dynamicLibrary),
        canonicalDecomposition = _CanonicalDecomposition(dynamicLibrary),
        caseMapCloser = _CaseMapCloser(dynamicLibrary),
        caseMapper = _CaseMapper(dynamicLibrary),
        codePointMapData16 = _CodePointMapData16(dynamicLibrary),
        codePointMapData8 = _CodePointMapData8(dynamicLibrary),
        codePointSetBuilder = _CodePointSetBuilder(dynamicLibrary),
        codePointSetData = _CodePointSetData(dynamicLibrary),
        collator = _Collator(dynamicLibrary),
        collatorOptionsV1 = _CollatorOptionsV1(dynamicLibrary),
        composingNormalizer = _ComposingNormalizer(dynamicLibrary),
        customTimeZone = _CustomTimeZone(dynamicLibrary),
        dataProvider = _DataProvider(dynamicLibrary),
        dataStruct = _DataStruct(dynamicLibrary),
        date = _Date(dynamicLibrary),
        dateFormatter = _DateFormatter(dynamicLibrary),
        dateTime = _DateTime(dynamicLibrary),
        dateTimeFormatter = _DateTimeFormatter(dynamicLibrary),
        decomposed = _Decomposed(dynamicLibrary),
        decomposingNormalizer = _DecomposingNormalizer(dynamicLibrary),
        diplomat = _Diplomat(dynamicLibrary),
        displayNamesOptionsV1 = _DisplayNamesOptionsV1(dynamicLibrary),
        fixedDecimal = _FixedDecimal(dynamicLibrary),
        fixedDecimalFormatter = _FixedDecimalFormatter(dynamicLibrary),
        generalCategoryNameToMaskMapper =
            _GeneralCategoryNameToMaskMapper(dynamicLibrary),
        graphemeClusterBreakIteratorLatin1 =
            _GraphemeClusterBreakIteratorLatin1(dynamicLibrary),
        graphemeClusterBreakIteratorUtf16 =
            _GraphemeClusterBreakIteratorUtf16(dynamicLibrary),
        graphemeClusterBreakIteratorUtf8 =
            _GraphemeClusterBreakIteratorUtf8(dynamicLibrary),
        graphemeClusterSegmenter = _GraphemeClusterSegmenter(dynamicLibrary),
        gregorianDateFormatter = _GregorianDateFormatter(dynamicLibrary),
        gregorianDateTimeFormatter =
            _GregorianDateTimeFormatter(dynamicLibrary),
        gregorianZonedDateTimeFormatter =
            _GregorianZonedDateTimeFormatter(dynamicLibrary),
        ianaToBcp47Mapper = _IanaToBcp47Mapper(dynamicLibrary),
        isoDate = _IsoDate(dynamicLibrary),
        isoDateTime = _IsoDateTime(dynamicLibrary),
        isoTimeZoneOptions = _IsoTimeZoneOptions(dynamicLibrary),
        lineBreakIteratorLatin1 = _LineBreakIteratorLatin1(dynamicLibrary),
        lineBreakIteratorUtf16 = _LineBreakIteratorUtf16(dynamicLibrary),
        lineBreakIteratorUtf8 = _LineBreakIteratorUtf8(dynamicLibrary),
        lineBreakOptionsV1 = _LineBreakOptionsV1(dynamicLibrary),
        lineSegmenter = _LineSegmenter(dynamicLibrary),
        list = _List(dynamicLibrary),
        listFormatter = _ListFormatter(dynamicLibrary),
        locale = _Locale(dynamicLibrary),
        localeCanonicalizer = _LocaleCanonicalizer(dynamicLibrary),
        localeDirectionality = _LocaleDirectionality(dynamicLibrary),
        localeDisplayNamesFormatter =
            _LocaleDisplayNamesFormatter(dynamicLibrary),
        localeExpander = _LocaleExpander(dynamicLibrary),
        localeFallbackConfig = _LocaleFallbackConfig(dynamicLibrary),
        localeFallbackIterator = _LocaleFallbackIterator(dynamicLibrary),
        localeFallbacker = _LocaleFallbacker(dynamicLibrary),
        localeFallbackerWithConfig =
            _LocaleFallbackerWithConfig(dynamicLibrary),
        logger = _Logger(dynamicLibrary),
        metazoneCalculator = _MetazoneCalculator(dynamicLibrary),
        pluralCategories = _PluralCategories(dynamicLibrary),
        pluralCategory = _PluralCategory(dynamicLibrary),
        pluralOperands = _PluralOperands(dynamicLibrary),
        pluralRules = _PluralRules(dynamicLibrary),
        propertyValueNameToEnumMapper =
            _PropertyValueNameToEnumMapper(dynamicLibrary),
        regionDisplayNames = _RegionDisplayNames(dynamicLibrary),
        reorderedIndexMap = _ReorderedIndexMap(dynamicLibrary),
        scriptExtensionsSet = _ScriptExtensionsSet(dynamicLibrary),
        scriptWithExtensions = _ScriptWithExtensions(dynamicLibrary),
        scriptWithExtensionsBorrowed =
            _ScriptWithExtensionsBorrowed(dynamicLibrary),
        sentenceBreakIteratorLatin1 =
            _SentenceBreakIteratorLatin1(dynamicLibrary),
        sentenceBreakIteratorUtf16 =
            _SentenceBreakIteratorUtf16(dynamicLibrary),
        sentenceBreakIteratorUtf8 = _SentenceBreakIteratorUtf8(dynamicLibrary),
        sentenceSegmenter = _SentenceSegmenter(dynamicLibrary),
        time = _Time(dynamicLibrary),
        timeFormatter = _TimeFormatter(dynamicLibrary),
        timeZoneFormatter = _TimeZoneFormatter(dynamicLibrary),
        titlecaseMapper = _TitlecaseMapper(dynamicLibrary),
        titlecaseOptionsV1 = _TitlecaseOptionsV1(dynamicLibrary),
        unicodeSetData = _UnicodeSetData(dynamicLibrary),
        weekCalculator = _WeekCalculator(dynamicLibrary),
        weekOf = _WeekOf(dynamicLibrary),
        wordBreakIteratorLatin1 = _WordBreakIteratorLatin1(dynamicLibrary),
        wordBreakIteratorUtf16 = _WordBreakIteratorUtf16(dynamicLibrary),
        wordBreakIteratorUtf8 = _WordBreakIteratorUtf8(dynamicLibrary),
        wordSegmenter = _WordSegmenter(dynamicLibrary),
        zonedDateTimeFormatter = _ZonedDateTimeFormatter(dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final _AnyCalendarKind anyCalendarKind;

  final _Bcp47ToIanaMapper bcp47ToIanaMapper;

  final _Bidi bidi;

  final _BidiInfo bidiInfo;

  final _BidiParagraph bidiParagraph;

  final _Calendar calendar;

  final _CanonicalCombiningClassMap canonicalCombiningClassMap;

  final _CanonicalComposition canonicalComposition;

  final _CanonicalDecomposition canonicalDecomposition;

  final _CaseMapCloser caseMapCloser;

  final _CaseMapper caseMapper;

  final _CodePointMapData16 codePointMapData16;

  final _CodePointMapData8 codePointMapData8;

  final _CodePointSetBuilder codePointSetBuilder;

  final _CodePointSetData codePointSetData;

  final _Collator collator;

  final _CollatorOptionsV1 collatorOptionsV1;

  final _ComposingNormalizer composingNormalizer;

  final _CustomTimeZone customTimeZone;

  final _DataProvider dataProvider;

  final _DataStruct dataStruct;

  final _Date date;

  final _DateFormatter dateFormatter;

  final _DateTime dateTime;

  final _DateTimeFormatter dateTimeFormatter;

  final _Decomposed decomposed;

  final _DecomposingNormalizer decomposingNormalizer;

  final _Diplomat diplomat;

  final _DisplayNamesOptionsV1 displayNamesOptionsV1;

  final _FixedDecimal fixedDecimal;

  final _FixedDecimalFormatter fixedDecimalFormatter;

  final _GeneralCategoryNameToMaskMapper generalCategoryNameToMaskMapper;

  final _GraphemeClusterBreakIteratorLatin1 graphemeClusterBreakIteratorLatin1;

  final _GraphemeClusterBreakIteratorUtf16 graphemeClusterBreakIteratorUtf16;

  final _GraphemeClusterBreakIteratorUtf8 graphemeClusterBreakIteratorUtf8;

  final _GraphemeClusterSegmenter graphemeClusterSegmenter;

  final _GregorianDateFormatter gregorianDateFormatter;

  final _GregorianDateTimeFormatter gregorianDateTimeFormatter;

  final _GregorianZonedDateTimeFormatter gregorianZonedDateTimeFormatter;

  final _IanaToBcp47Mapper ianaToBcp47Mapper;

  final _IsoDate isoDate;

  final _IsoDateTime isoDateTime;

  final _IsoTimeZoneOptions isoTimeZoneOptions;

  final _LineBreakIteratorLatin1 lineBreakIteratorLatin1;

  final _LineBreakIteratorUtf16 lineBreakIteratorUtf16;

  final _LineBreakIteratorUtf8 lineBreakIteratorUtf8;

  final _LineBreakOptionsV1 lineBreakOptionsV1;

  final _LineSegmenter lineSegmenter;

  final _List list;

  final _ListFormatter listFormatter;

  final _Locale locale;

  final _LocaleCanonicalizer localeCanonicalizer;

  final _LocaleDirectionality localeDirectionality;

  final _LocaleDisplayNamesFormatter localeDisplayNamesFormatter;

  final _LocaleExpander localeExpander;

  final _LocaleFallbackConfig localeFallbackConfig;

  final _LocaleFallbackIterator localeFallbackIterator;

  final _LocaleFallbacker localeFallbacker;

  final _LocaleFallbackerWithConfig localeFallbackerWithConfig;

  final _Logger logger;

  final _MetazoneCalculator metazoneCalculator;

  final _PluralCategories pluralCategories;

  final _PluralCategory pluralCategory;

  final _PluralOperands pluralOperands;

  final _PluralRules pluralRules;

  final _PropertyValueNameToEnumMapper propertyValueNameToEnumMapper;

  final _RegionDisplayNames regionDisplayNames;

  final _ReorderedIndexMap reorderedIndexMap;

  final _ScriptExtensionsSet scriptExtensionsSet;

  final _ScriptWithExtensions scriptWithExtensions;

  final _ScriptWithExtensionsBorrowed scriptWithExtensionsBorrowed;

  final _SentenceBreakIteratorLatin1 sentenceBreakIteratorLatin1;

  final _SentenceBreakIteratorUtf16 sentenceBreakIteratorUtf16;

  final _SentenceBreakIteratorUtf8 sentenceBreakIteratorUtf8;

  final _SentenceSegmenter sentenceSegmenter;

  final _Time time;

  final _TimeFormatter timeFormatter;

  final _TimeZoneFormatter timeZoneFormatter;

  final _TitlecaseMapper titlecaseMapper;

  final _TitlecaseOptionsV1 titlecaseOptionsV1;

  final _UnicodeSetData unicodeSetData;

  final _WeekCalculator weekCalculator;

  final _WeekOf weekOf;

  final _WordBreakIteratorLatin1 wordBreakIteratorLatin1;

  final _WordBreakIteratorUtf16 wordBreakIteratorUtf16;

  final _WordBreakIteratorUtf8 wordBreakIteratorUtf8;

  final _WordSegmenter wordSegmenter;

  final _ZonedDateTimeFormatter zonedDateTimeFormatter;
}
