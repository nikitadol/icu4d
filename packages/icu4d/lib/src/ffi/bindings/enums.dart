// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

abstract class ICU4XAnyCalendarKind {
  static const int iso = 0;

  static const int gregorian = 1;

  static const int buddhist = 2;

  static const int japanese = 3;

  static const int japaneseExtended = 4;

  static const int ethiopian = 5;

  static const int ethiopianAmeteAlem = 6;

  static const int indian = 7;

  static const int coptic = 8;

  static const int dangi = 9;

  static const int chinese = 10;

  static const int hebrew = 11;

  static const int islamicCivil = 12;

  static const int islamicObservational = 13;

  static const int islamicTabular = 14;

  static const int islamicUmmAlQura = 15;

  static const int persian = 16;

  static const int roc = 17;
}

abstract class ICU4XBidiDirection {
  static const int ltr = 0;

  static const int rtl = 1;

  static const int mixed = 2;
}

abstract class ICU4XCollatorAlternateHandling {
  static const int auto = 0;

  static const int nonIgnorable = 1;

  static const int shifted = 2;
}

abstract class ICU4XCollatorBackwardSecondLevel {
  static const int auto = 0;

  static const int off = 1;

  static const int on = 2;
}

abstract class ICU4XCollatorCaseFirst {
  static const int auto = 0;

  static const int off = 1;

  static const int lowerFirst = 2;

  static const int upperFirst = 3;
}

abstract class ICU4XCollatorCaseLevel {
  static const int auto = 0;

  static const int off = 1;

  static const int on = 2;
}

abstract class ICU4XCollatorMaxVariable {
  static const int auto = 0;

  static const int space = 1;

  static const int punctuation = 2;

  static const int symbol = 3;

  static const int currency = 4;
}

abstract class ICU4XCollatorNumeric {
  static const int auto = 0;

  static const int off = 1;

  static const int on = 2;
}

abstract class ICU4XCollatorStrength {
  static const int auto = 0;

  static const int primary = 1;

  static const int secondary = 2;

  static const int tertiary = 3;

  static const int quaternary = 4;

  static const int identical = 5;
}

abstract class ICU4XDateLength {
  static const int full = 0;

  static const int long = 1;

  static const int medium = 2;

  static const int short = 3;
}

abstract class ICU4XDisplayNamesFallback {
  static const int code = 0;

  static const int none = 1;
}

abstract class ICU4XDisplayNamesStyle {
  static const int auto = 0;

  static const int narrow = 1;

  static const int short = 2;

  static const int long = 3;

  static const int menu = 4;
}

abstract class ICU4XError {
  static const int unknownError = 0;

  static const int writeableError = 1;

  static const int outOfBoundsError = 2;

  static const int dataMissingDataKeyError = 256;

  static const int dataMissingVariantError = 257;

  static const int dataMissingLocaleError = 258;

  static const int dataNeedsVariantError = 259;

  static const int dataNeedsLocaleError = 260;

  static const int dataExtraneousLocaleError = 261;

  static const int dataFilteredResourceError = 262;

  static const int dataMismatchedTypeError = 263;

  static const int dataMissingPayloadError = 264;

  static const int dataInvalidStateError = 265;

  static const int dataCustomError = 266;

  static const int dataIoError = 267;

  static const int dataUnavailableBufferFormatError = 268;

  static const int dataMismatchedAnyBufferError = 269;

  static const int localeUndefinedSubtagError = 512;

  static const int localeParserLanguageError = 513;

  static const int localeParserSubtagError = 514;

  static const int localeParserExtensionError = 515;

  static const int dataStructValidityError = 768;

  static const int propertyUnknownScriptIdError = 1024;

  static const int propertyUnknownGeneralCategoryGroupError = 1025;

  static const int propertyUnexpectedPropertyNameError = 1026;

  static const int fixedDecimalLimitError = 1280;

  static const int fixedDecimalSyntaxError = 1281;

  static const int pluralsParserError = 1536;

  static const int calendarParseError = 1792;

  static const int calendarOverflowError = 1793;

  static const int calendarUnderflowError = 1794;

  static const int calendarOutOfRangeError = 1795;

  static const int calendarUnknownEraError = 1796;

  static const int calendarUnknownMonthCodeError = 1797;

  static const int calendarMissingInputError = 1798;

  static const int calendarUnknownKindError = 1799;

  static const int calendarMissingError = 1800;

  static const int dateTimePatternError = 2048;

  static const int dateTimeMissingInputFieldError = 2049;

  static const int dateTimeSkeletonError = 2050;

  static const int dateTimeUnsupportedFieldError = 2051;

  static const int dateTimeUnsupportedOptionsError = 2052;

  static const int dateTimeMissingWeekdaySymbolError = 2053;

  static const int dateTimeMissingMonthSymbolError = 2054;

  static const int dateTimeFixedDecimalError = 2055;

  static const int dateTimeMismatchedCalendarError = 2056;

  static const int tinyStrTooLargeError = 2304;

  static const int tinyStrContainsNullError = 2305;

  static const int tinyStrNonAsciiError = 2306;

  static const int timeZoneOffsetOutOfBoundsError = 2560;

  static const int timeZoneInvalidOffsetError = 2561;

  static const int timeZoneMissingInputError = 2562;

  static const int timeZoneInvalidIdError = 2563;

  static const int normalizerFutureExtensionError = 2816;

  static const int normalizerValidationError = 2817;
}

abstract class ICU4XFixedDecimalGroupingStrategy {
  static const int auto = 0;

  static const int never = 1;

  static const int always = 2;

  static const int min2 = 3;
}

abstract class ICU4XFixedDecimalSign {
  static const int none = 0;

  static const int negative = 1;

  static const int positive = 2;
}

abstract class ICU4XFixedDecimalSignDisplay {
  static const int auto = 0;

  static const int never = 1;

  static const int always = 2;

  static const int exceptZero = 3;

  static const int negative = 4;
}

abstract class ICU4XIsoTimeZoneFormat {
  static const int basic = 0;

  static const int extended = 1;

  static const int utcBasic = 2;

  static const int utcExtended = 3;
}

abstract class ICU4XIsoTimeZoneMinuteDisplay {
  static const int required = 0;

  static const int optional = 1;
}

abstract class ICU4XIsoTimeZoneSecondDisplay {
  static const int optional = 0;

  static const int never = 1;
}

abstract class ICU4XIsoWeekday {
  static const int monday = 1;

  static const int tuesday = 2;

  static const int wednesday = 3;

  static const int thursday = 4;

  static const int friday = 5;

  static const int saturday = 6;

  static const int sunday = 7;
}

abstract class ICU4XLanguageDisplay {
  static const int dialect = 0;

  static const int standard = 1;
}

abstract class ICU4XLeadingAdjustment {
  static const int auto = 0;

  static const int none = 1;

  static const int toCased = 2;
}

abstract class ICU4XLineBreakStrictness {
  static const int loose = 0;

  static const int normal = 1;

  static const int strict = 2;

  static const int anywhere = 3;
}

abstract class ICU4XLineBreakWordOption {
  static const int normal = 0;

  static const int breakAll = 1;

  static const int keepAll = 2;
}

abstract class ICU4XListLength {
  static const int wide = 0;

  static const int short = 1;

  static const int narrow = 2;
}

abstract class ICU4XLocaleDirection {
  static const int leftToRight = 0;

  static const int rightToLeft = 1;

  static const int unknown = 2;
}

abstract class ICU4XLocaleFallbackPriority {
  static const int language = 0;

  static const int region = 1;

  static const int collation = 2;
}

abstract class ICU4XLocaleFallbackSupplement {
  static const int none = 0;

  static const int collation = 1;
}

abstract class ICU4XOrdering {
  static const int less = -1;

  static const int equal = 0;

  static const int greater = 1;
}

abstract class ICU4XPluralCategory {
  static const int zero = 0;

  static const int one = 1;

  static const int two = 2;

  static const int few = 3;

  static const int many = 4;

  static const int other = 5;
}

abstract class ICU4XSegmenterWordType {
  static const int none = 0;

  static const int number = 1;

  static const int letter = 2;
}

abstract class ICU4XTimeLength {
  static const int full = 0;

  static const int long = 1;

  static const int medium = 2;

  static const int short = 3;
}

abstract class ICU4XTrailingCase {
  static const int lower = 0;

  static const int unchanged = 1;
}

abstract class ICU4XTransformResult {
  static const int modified = 0;

  static const int unmodified = 1;
}

abstract class ICU4XWeekRelativeUnit {
  static const int previous = 0;

  static const int current = 1;

  static const int next = 2;
}
