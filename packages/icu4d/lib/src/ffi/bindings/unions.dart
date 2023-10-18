// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class ValueBoolOrICU4XError extends ffi.Union {
  @ffi.Bool()
  external bool ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XBcp47ToIanaMapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XBcp47ToIanaMapper> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XBidiOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XBidi> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCalendarOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCalendar> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCanonicalCombiningClassMapOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCanonicalCombiningClassMap> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCanonicalCompositionOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCanonicalComposition> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCanonicalDecompositionOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCanonicalDecomposition> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCaseMapCloserOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCaseMapCloser> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCaseMapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCaseMapper> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCodePointMapData16OrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCodePointMapData16> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCodePointMapData8OrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCodePointMapData8> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCodePointSetDataOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCodePointSetData> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCollatorOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCollator> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XComposingNormalizerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XComposingNormalizer> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XCustomTimeZoneOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XCustomTimeZone> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XDataProviderOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDataProvider> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XDataStructOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDataStruct> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDateFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDate> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDateTimeFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XDateTimeOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDateTime> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XDecomposingNormalizerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XDecomposingNormalizer> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XFixedDecimalFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XFixedDecimalFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XFixedDecimalOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XFixedDecimal> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XGeneralCategoryNameToMaskMapperOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XGeneralCategoryNameToMaskMapper> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XGraphemeClusterSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XGraphemeClusterSegmenter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XGregorianDateFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XGregorianDateFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XGregorianDateTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XGregorianDateTimeFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XGregorianZonedDateTimeFormatterOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XIanaToBcp47MapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XIanaToBcp47Mapper> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XIsoDateOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XIsoDate> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XIsoDateTimeOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XIsoDateTime> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLineSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLineSegmenter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XListFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XListFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleCanonicalizerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleCanonicalizer> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleDirectionalityOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleDirectionality> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleDisplayNamesFormatterOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleExpanderOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleExpander> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleFallbackerOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleFallbacker> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleFallbackerWithConfigOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocaleFallbackerWithConfig> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XLocaleOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XLocale> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XMetazoneCalculatorOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XMetazoneCalculator> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XPluralOperandsOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XPluralOperands> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XPluralRulesOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XPluralRules> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XPropertyValueNameToEnumMapperOrICU4XError
    extends ffi.Union {
  external ffi.Pointer<ICU4XPropertyValueNameToEnumMapper> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XRegionDisplayNamesOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XRegionDisplayNames> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XScriptWithExtensionsOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XScriptWithExtensions> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XSentenceSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XSentenceSegmenter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTimeFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XTimeOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTime> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XTimeZoneFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTimeZoneFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XTitlecaseMapperOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XTitlecaseMapper> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XUnicodeSetDataOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XUnicodeSetData> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XWeekCalculatorOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XWeekCalculator> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XWeekOfOrICU4XError extends ffi.Union {
  external ICU4XWeekOf ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XWordSegmenterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XWordSegmenter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueICU4XZonedDateTimeFormatterOrICU4XError extends ffi.Union {
  external ffi.Pointer<ICU4XZonedDateTimeFormatter> ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}

final class ValueInt32OrICU4XError extends ffi.Union {
  @ffi.Int32()
  external int ok;

  /// [ICU4XError]
  @ffi.Int32()
  external int err;
}
