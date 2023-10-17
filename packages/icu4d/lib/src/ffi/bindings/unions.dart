// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class ValueBoolOrICU4XError extends ffi.Union {
  @ffi.Bool()
  external bool ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XBcp47ToIanaMapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XBcp47ToIanaMapper> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XBidiOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XBidi> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCalendarOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCalendar> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCanonicalCombiningClassMapOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCanonicalCombiningClassMap> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCanonicalCompositionOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCanonicalComposition> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCanonicalDecompositionOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCanonicalDecomposition> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCaseMapCloserOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCaseMapCloser> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCaseMapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCaseMapper> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCodePointMapData16OrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCodePointMapData16> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCodePointMapData8OrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCodePointMapData8> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCodePointSetDataOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCodePointSetData> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCollatorOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCollator> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XComposingNormalizerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XComposingNormalizer> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XCustomTimeZoneOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCustomTimeZone> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XDataProviderOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDataProvider> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XDataStructOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDataStruct> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDateFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDate> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDateTimeFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateTimeOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDateTime> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XDecomposingNormalizerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDecomposingNormalizer> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XFixedDecimalFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XFixedDecimalFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XFixedDecimalOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XFixedDecimal> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XGeneralCategoryNameToMaskMapperOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XGraphemeClusterSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XGraphemeClusterSegmenter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XGregorianDateFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XGregorianDateFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XGregorianDateTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XGregorianDateTimeFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XGregorianZonedDateTimeFormatterOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XIanaToBcp47MapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XIanaToBcp47Mapper> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XIsoDateOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XIsoDate> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XIsoDateTimeOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XIsoDateTime> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLineSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLineSegmenter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XListFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XListFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleCanonicalizerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleCanonicalizer> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleDirectionalityOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleDirectionality> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleDisplayNamesFormatterOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleExpanderOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleExpander> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleFallbackerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleFallbacker> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleFallbackerWithConfigOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleFallbackerWithConfig> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocale> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XMetazoneCalculatorOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XMetazoneCalculator> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XPluralOperandsOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XPluralOperands> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XPluralRulesOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XPluralRules> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XPropertyValueNameToEnumMapperOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XRegionDisplayNamesOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XRegionDisplayNames> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XScriptWithExtensionsOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XScriptWithExtensions> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XSentenceSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XSentenceSegmenter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTimeFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XTimeOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTime> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XTimeZoneFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTimeZoneFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XTitlecaseMapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTitlecaseMapper> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XUnicodeSetDataOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XUnicodeSetData> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XWeekCalculatorOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XWeekCalculator> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XWeekOfOrICU4XError extends ffi.Union {
  external ICU4XWeekOf ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XWordSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XWordSegmenter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueICU4XZonedDateTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XZonedDateTimeFormatter> ok;

  @ffi.Int32()
  external int err;
}

final class ValueInt32OrICU4XError extends ffi.Union {
  @ffi.Int32()
  external int ok;

  @ffi.Int32()
  external int err;
}
