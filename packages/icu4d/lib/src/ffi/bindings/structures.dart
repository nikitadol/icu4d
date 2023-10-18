// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class CodePointRangeIterator extends ffi.Opaque {}

final class DiplomatStringView extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> data;

  @ffi.Size()
  external int len;
}

final class DiplomatUsizeView extends ffi.Struct {
  external ffi.Pointer<ffi.Size> data;

  @ffi.Size()
  external int len;
}

final class DiplomatWriteable extends ffi.Struct {
  external ffi.Pointer<ffi.Void> context;

  external ffi.Pointer<ffi.Uint8> buf;

  @ffi.Size()
  external int len;

  @ffi.Size()
  external int cap;

  external ffi.Pointer<
          ffi.NativeFunction<ffi.Void Function(ffi.Pointer<DiplomatWriteable>)>>
      flush;

  external ffi.Pointer<
      ffi.NativeFunction<
          ffi.Bool Function(ffi.Pointer<DiplomatWriteable>, ffi.Size)>> grow;
}

final class ICU4XBcp47ToIanaMapper extends ffi.Opaque {}

final class ICU4XBidi extends ffi.Opaque {}

final class ICU4XBidiInfo extends ffi.Opaque {}

final class ICU4XBidiParagraph extends ffi.Opaque {}

final class ICU4XCalendar extends ffi.Opaque {}

final class ICU4XCanonicalCombiningClassMap extends ffi.Opaque {}

final class ICU4XCanonicalComposition extends ffi.Opaque {}

final class ICU4XCanonicalDecomposition extends ffi.Opaque {}

final class ICU4XCaseMapCloser extends ffi.Opaque {}

final class ICU4XCaseMapper extends ffi.Opaque {}

final class ICU4XCodePointMapData16 extends ffi.Opaque {}

final class ICU4XCodePointMapData8 extends ffi.Opaque {}

final class ICU4XCodePointSetBuilder extends ffi.Opaque {}

final class ICU4XCodePointSetData extends ffi.Opaque {}

final class ICU4XCollator extends ffi.Opaque {}

final class ICU4XCollatorOptionsV1 extends ffi.Struct {
  /// [ICU4XCollatorStrength]
  @ffi.Int32()
  external int strength;

  /// [ICU4XCollatorAlternateHandling]
  @ffi.Int32()
  external int alternate_handling;

  /// [ICU4XCollatorCaseFirst]
  @ffi.Int32()
  external int case_first;

  /// [ICU4XCollatorMaxVariable]
  @ffi.Int32()
  external int max_variable;

  /// [ICU4XCollatorCaseLevel]
  @ffi.Int32()
  external int case_level;

  /// [ICU4XCollatorNumeric]
  @ffi.Int32()
  external int numeric;

  /// [ICU4XCollatorBackwardSecondLevel]
  @ffi.Int32()
  external int backward_second_level;
}

final class ICU4XComposingNormalizer extends ffi.Opaque {}

final class ICU4XCustomTimeZone extends ffi.Opaque {}

final class ICU4XDataProvider extends ffi.Opaque {}

final class ICU4XDataStruct extends ffi.Opaque {}

final class ICU4XDate extends ffi.Opaque {}

final class ICU4XDateFormatter extends ffi.Opaque {}

final class ICU4XDateTime extends ffi.Opaque {}

final class ICU4XDateTimeFormatter extends ffi.Opaque {}

final class ICU4XDecomposed extends ffi.Struct {
  @ffi.Uint32()
  external int first;

  @ffi.Uint32()
  external int second;
}

final class ICU4XDecomposingNormalizer extends ffi.Opaque {}

final class ICU4XDisplayNamesOptionsV1 extends ffi.Struct {
  /// [ICU4XDisplayNamesStyle]
  @ffi.Int32()
  external int style;

  /// [ICU4XDisplayNamesFallback]
  @ffi.Int32()
  external int fallback;

  /// [ICU4XLanguageDisplay]
  @ffi.Int32()
  external int language_display;
}

final class ICU4XFixedDecimal extends ffi.Opaque {}

final class ICU4XFixedDecimalFormatter extends ffi.Opaque {}

final class ICU4XGeneralCategoryNameToMaskMapper extends ffi.Opaque {}

final class ICU4XGraphemeClusterBreakIteratorLatin1 extends ffi.Opaque {}

final class ICU4XGraphemeClusterBreakIteratorUtf16 extends ffi.Opaque {}

final class ICU4XGraphemeClusterBreakIteratorUtf8 extends ffi.Opaque {}

final class ICU4XGraphemeClusterSegmenter extends ffi.Opaque {}

final class ICU4XGregorianDateFormatter extends ffi.Opaque {}

final class ICU4XGregorianDateTimeFormatter extends ffi.Opaque {}

final class ICU4XGregorianZonedDateTimeFormatter extends ffi.Opaque {}

final class ICU4XIanaToBcp47Mapper extends ffi.Opaque {}

final class ICU4XIsoDate extends ffi.Opaque {}

final class ICU4XIsoDateTime extends ffi.Opaque {}

final class ICU4XIsoTimeZoneOptions extends ffi.Struct {
  /// [ICU4XIsoTimeZoneFormat]
  @ffi.Int32()
  external int format;

  /// [ICU4XIsoTimeZoneMinuteDisplay]
  @ffi.Int32()
  external int minutes;

  /// [ICU4XIsoTimeZoneSecondDisplay]
  @ffi.Int32()
  external int seconds;
}

final class ICU4XLineBreakIteratorLatin1 extends ffi.Opaque {}

final class ICU4XLineBreakIteratorUtf16 extends ffi.Opaque {}

final class ICU4XLineBreakIteratorUtf8 extends ffi.Opaque {}

final class ICU4XLineBreakOptionsV1 extends ffi.Struct {
  /// [ICU4XLineBreakStrictness]
  @ffi.Int32()
  external int strictness;

  /// [ICU4XLineBreakWordOption]
  @ffi.Int32()
  external int word_option;

  @ffi.Bool()
  external bool ja_zh;
}

final class ICU4XLineSegmenter extends ffi.Opaque {}

final class ICU4XList extends ffi.Opaque {}

final class ICU4XListFormatter extends ffi.Opaque {}

final class ICU4XLocale extends ffi.Opaque {}

final class ICU4XLocaleCanonicalizer extends ffi.Opaque {}

final class ICU4XLocaleDirectionality extends ffi.Opaque {}

final class ICU4XLocaleDisplayNamesFormatter extends ffi.Opaque {}

final class ICU4XLocaleExpander extends ffi.Opaque {}

final class ICU4XLocaleFallbackConfig extends ffi.Struct {
  /// [ICU4XLocaleFallbackPriority]
  @ffi.Int32()
  external int priority;

  external DiplomatStringView extension_key;

  /// [ICU4XLocaleFallbackSupplement]
  @ffi.Int32()
  external int fallback_supplement;
}

final class ICU4XLocaleFallbackIterator extends ffi.Opaque {}

final class ICU4XLocaleFallbacker extends ffi.Opaque {}

final class ICU4XLocaleFallbackerWithConfig extends ffi.Opaque {}

final class ICU4XLogger extends ffi.Opaque {}

final class ICU4XMetazoneCalculator extends ffi.Opaque {}

final class ICU4XPluralCategories extends ffi.Struct {
  @ffi.Bool()
  external bool zero;

  @ffi.Bool()
  external bool one;

  @ffi.Bool()
  external bool two;

  @ffi.Bool()
  external bool few;

  @ffi.Bool()
  external bool many;

  @ffi.Bool()
  external bool other;
}

final class ICU4XPluralOperands extends ffi.Opaque {}

final class ICU4XPluralRules extends ffi.Opaque {}

final class ICU4XPropertyValueNameToEnumMapper extends ffi.Opaque {}

final class ICU4XRegionDisplayNames extends ffi.Opaque {}

final class ICU4XReorderedIndexMap extends ffi.Opaque {}

final class ICU4XScriptExtensionsSet extends ffi.Opaque {}

final class ICU4XScriptWithExtensions extends ffi.Opaque {}

final class ICU4XScriptWithExtensionsBorrowed extends ffi.Opaque {}

final class ICU4XSentenceBreakIteratorLatin1 extends ffi.Opaque {}

final class ICU4XSentenceBreakIteratorUtf16 extends ffi.Opaque {}

final class ICU4XSentenceBreakIteratorUtf8 extends ffi.Opaque {}

final class ICU4XSentenceSegmenter extends ffi.Opaque {}

final class ICU4XTime extends ffi.Opaque {}

final class ICU4XTimeFormatter extends ffi.Opaque {}

final class ICU4XTimeZoneFormatter extends ffi.Opaque {}

final class ICU4XTitlecaseMapper extends ffi.Opaque {}

final class ICU4XTitlecaseOptionsV1 extends ffi.Struct {
  /// [ICU4XLeadingAdjustment]
  @ffi.Int32()
  external int leading_adjustment;

  /// [ICU4XTrailingCase]
  @ffi.Int32()
  external int trailing_case;
}

final class ICU4XUnicodeSetData extends ffi.Opaque {}

final class ICU4XWeekCalculator extends ffi.Opaque {}

final class ICU4XWeekOf extends ffi.Struct {
  @ffi.Uint16()
  external int week;

  /// [ICU4XWeekRelativeUnit]
  @ffi.Int32()
  external int unit;
}

final class ICU4XWordBreakIteratorLatin1 extends ffi.Opaque {}

final class ICU4XWordBreakIteratorUtf16 extends ffi.Opaque {}

final class ICU4XWordBreakIteratorUtf8 extends ffi.Opaque {}

final class ICU4XWordSegmenter extends ffi.Opaque {}

final class ICU4XZonedDateTimeFormatter extends ffi.Opaque {}

final class ResultBoolOrICU4XError extends ffi.Struct {
  external ValueBoolOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XAnyCalendarKindOrVoid extends ffi.Struct {
  /// [ICU4XAnyCalendarKind]
  @ffi.Int32()
  external int ok;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XBcp47ToIanaMapperOrICU4XError extends ffi.Struct {
  external ValueICU4XBcp47ToIanaMapperOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XBidiOrICU4XError extends ffi.Struct {
  external ValueICU4XBidiOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCalendarOrICU4XError extends ffi.Struct {
  external ValueICU4XCalendarOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCanonicalCombiningClassMapOrICU4XError
    extends ffi.Struct {
  external ValueICU4XCanonicalCombiningClassMapOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCanonicalCompositionOrICU4XError extends ffi.Struct {
  external ValueICU4XCanonicalCompositionOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCanonicalDecompositionOrICU4XError extends ffi.Struct {
  external ValueICU4XCanonicalDecompositionOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCaseMapCloserOrICU4XError extends ffi.Struct {
  external ValueICU4XCaseMapCloserOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCaseMapperOrICU4XError extends ffi.Struct {
  external ValueICU4XCaseMapperOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCodePointMapData16OrICU4XError extends ffi.Struct {
  external ValueICU4XCodePointMapData16OrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCodePointMapData8OrICU4XError extends ffi.Struct {
  external ValueICU4XCodePointMapData8OrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCodePointSetDataOrICU4XError extends ffi.Struct {
  external ValueICU4XCodePointSetDataOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCollatorOrICU4XError extends ffi.Struct {
  external ValueICU4XCollatorOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XComposingNormalizerOrICU4XError extends ffi.Struct {
  external ValueICU4XComposingNormalizerOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XCustomTimeZoneOrICU4XError extends ffi.Struct {
  external ValueICU4XCustomTimeZoneOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XDataProviderOrICU4XError extends ffi.Struct {
  external ValueICU4XDataProviderOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XDataStructOrICU4XError extends ffi.Struct {
  external ValueICU4XDataStructOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XDateFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XDateFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XDateOrICU4XError extends ffi.Struct {
  external ValueICU4XDateOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XDateTimeFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XDateTimeFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XDateTimeOrICU4XError extends ffi.Struct {
  external ValueICU4XDateTimeOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XDecomposingNormalizerOrICU4XError extends ffi.Struct {
  external ValueICU4XDecomposingNormalizerOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XFixedDecimalFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XFixedDecimalFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XFixedDecimalOrICU4XError extends ffi.Struct {
  external ValueICU4XFixedDecimalOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XGeneralCategoryNameToMaskMapperOrICU4XError
    extends ffi.Struct {
  external ValueICU4XGeneralCategoryNameToMaskMapperOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XGraphemeClusterSegmenterOrICU4XError extends ffi.Struct {
  external ValueICU4XGraphemeClusterSegmenterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XGregorianDateFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XGregorianDateFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XGregorianDateTimeFormatterOrICU4XError
    extends ffi.Struct {
  external ValueICU4XGregorianDateTimeFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XGregorianZonedDateTimeFormatterOrICU4XError
    extends ffi.Struct {
  external ValueICU4XGregorianZonedDateTimeFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XIanaToBcp47MapperOrICU4XError extends ffi.Struct {
  external ValueICU4XIanaToBcp47MapperOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XIsoDateOrICU4XError extends ffi.Struct {
  external ValueICU4XIsoDateOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XIsoDateTimeOrICU4XError extends ffi.Struct {
  external ValueICU4XIsoDateTimeOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLineSegmenterOrICU4XError extends ffi.Struct {
  external ValueICU4XLineSegmenterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XListFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XListFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLocaleCanonicalizerOrICU4XError extends ffi.Struct {
  external ValueICU4XLocaleCanonicalizerOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLocaleDirectionalityOrICU4XError extends ffi.Struct {
  external ValueICU4XLocaleDirectionalityOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLocaleDisplayNamesFormatterOrICU4XError
    extends ffi.Struct {
  external ValueICU4XLocaleDisplayNamesFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLocaleExpanderOrICU4XError extends ffi.Struct {
  external ValueICU4XLocaleExpanderOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLocaleFallbackerOrICU4XError extends ffi.Struct {
  external ValueICU4XLocaleFallbackerOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLocaleFallbackerWithConfigOrICU4XError
    extends ffi.Struct {
  external ValueICU4XLocaleFallbackerWithConfigOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XLocaleOrICU4XError extends ffi.Struct {
  external ValueICU4XLocaleOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XMetazoneCalculatorOrICU4XError extends ffi.Struct {
  external ValueICU4XMetazoneCalculatorOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XPluralCategoryOrVoid extends ffi.Struct {
  /// [ICU4XPluralCategory]
  @ffi.Int32()
  external int ok;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XPluralOperandsOrICU4XError extends ffi.Struct {
  external ValueICU4XPluralOperandsOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XPluralRulesOrICU4XError extends ffi.Struct {
  external ValueICU4XPluralRulesOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XPropertyValueNameToEnumMapperOrICU4XError
    extends ffi.Struct {
  external ValueICU4XPropertyValueNameToEnumMapperOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XRegionDisplayNamesOrICU4XError extends ffi.Struct {
  external ValueICU4XRegionDisplayNamesOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XScriptWithExtensionsOrICU4XError extends ffi.Struct {
  external ValueICU4XScriptWithExtensionsOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XSentenceSegmenterOrICU4XError extends ffi.Struct {
  external ValueICU4XSentenceSegmenterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XTimeFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XTimeFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XTimeOrICU4XError extends ffi.Struct {
  external ValueICU4XTimeOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XTimeZoneFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XTimeZoneFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XTitlecaseMapperOrICU4XError extends ffi.Struct {
  external ValueICU4XTitlecaseMapperOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XUnicodeSetDataOrICU4XError extends ffi.Struct {
  external ValueICU4XUnicodeSetDataOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XWeekCalculatorOrICU4XError extends ffi.Struct {
  external ValueICU4XWeekCalculatorOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XWeekOfOrICU4XError extends ffi.Struct {
  external ValueICU4XWeekOfOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XWordSegmenterOrICU4XError extends ffi.Struct {
  external ValueICU4XWordSegmenterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultICU4XZonedDateTimeFormatterOrICU4XError extends ffi.Struct {
  external ValueICU4XZonedDateTimeFormatterOrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultInt32OrTOrICU4XError extends ffi.Struct {
  external ValueInt32OrICU4XError value;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultUint16OrTOrVoid extends ffi.Struct {
  @ffi.Uint16()
  external int ok;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultVoidOrICU4XError extends ffi.Struct {
  /// [ICU4XError]
  @ffi.Int32()
  external int err;

  @ffi.Bool()
  external bool is_ok;
}

final class ResultVoidOrVoid extends ffi.Struct {
  @ffi.Bool()
  external bool is_ok;
}
