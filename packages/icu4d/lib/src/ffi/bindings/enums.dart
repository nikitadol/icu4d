// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

abstract class ICU4XError {
  static int unknownError = 0;

  static int writeableError = 1;

  static int outOfBoundsError = 2;

  static int dataMissingDataKeyError = 256;

  static int dataMissingVariantError = 257;

  static int dataMissingLocaleError = 258;

  static int dataNeedsVariantError = 259;

  static int dataNeedsLocaleError = 260;

  static int dataExtraneousLocaleError = 261;

  static int dataFilteredResourceError = 262;

  static int dataMismatchedTypeError = 263;

  static int dataMissingPayloadError = 264;

  static int dataInvalidStateError = 265;

  static int dataCustomError = 266;

  static int dataIoError = 267;

  static int dataUnavailableBufferFormatError = 268;

  static int dataMismatchedAnyBufferError = 269;

  static int localeUndefinedSubtagError = 512;

  static int localeParserLanguageError = 513;

  static int localeParserSubtagError = 514;

  static int localeParserExtensionError = 515;

  static int dataStructValidityError = 768;

  static int propertyUnknownScriptIdError = 1024;

  static int propertyUnknownGeneralCategoryGroupError = 1025;

  static int propertyUnexpectedPropertyNameError = 1026;

  static int fixedDecimalLimitError = 1280;

  static int fixedDecimalSyntaxError = 1281;

  static int pluralsParserError = 1536;

  static int calendarParseError = 1792;

  static int calendarOverflowError = 1793;

  static int calendarUnderflowError = 1794;

  static int calendarOutOfRangeError = 1795;

  static int calendarUnknownEraError = 1796;

  static int calendarUnknownMonthCodeError = 1797;

  static int calendarMissingInputError = 1798;

  static int calendarUnknownKindError = 1799;

  static int calendarMissingError = 1800;

  static int dateTimePatternError = 2048;

  static int dateTimeMissingInputFieldError = 2049;

  static int dateTimeSkeletonError = 2050;

  static int dateTimeUnsupportedFieldError = 2051;

  static int dateTimeUnsupportedOptionsError = 2052;

  static int dateTimeMissingWeekdaySymbolError = 2053;

  static int dateTimeMissingMonthSymbolError = 2054;

  static int dateTimeFixedDecimalError = 2055;

  static int dateTimeMismatchedCalendarError = 2056;

  static int tinyStrTooLargeError = 2304;

  static int tinyStrContainsNullError = 2305;

  static int tinyStrNonAsciiError = 2306;

  static int timeZoneOffsetOutOfBoundsError = 2560;

  static int timeZoneInvalidOffsetError = 2561;

  static int timeZoneMissingInputError = 2562;

  static int normalizerFutureExtensionError = 2816;

  static int normalizerValidationError = 2817;
}

abstract class ICU4XLocaleFallbackPriority {
  static int language = 0;

  static int region = 1;

  static int collation = 2;
}

abstract class ICU4XOrdering {
  static int less = -1;

  static int equal = 0;

  static int greater = 1;
}

abstract class ICU4XTransformResult {
  static int modified = 0;

  static int unmodified = 1;
}

abstract class ICU4XPluralCategory {
  static int zero = 0;

  static int one = 1;

  static int two = 2;

  static int few = 3;

  static int many = 4;

  static int other = 5;
}

abstract class ICU4XWeekRelativeUnit {
  static int previous = 0;

  static int current = 1;

  static int next = 2;
}

abstract class ICU4XTimeLength {
  static int full = 0;

  static int long = 1;

  static int medium = 2;

  static int short = 3;
}

abstract class ICU4XAnyCalendarKind {
  static int iso = 0;

  static int gregorian = 1;

  static int buddhist = 2;

  static int japanese = 3;

  static int japaneseExtended = 4;

  static int ethiopian = 5;

  static int ethiopianAmeteAlem = 6;

  static int indian = 7;

  static int coptic = 8;
}

abstract class ICU4XIsoWeekday {
  static int monday = 1;

  static int tuesday = 2;

  static int wednesday = 3;

  static int thursday = 4;

  static int friday = 5;

  static int saturday = 6;

  static int sunday = 7;
}

abstract class ICU4XDisplayNamesStyle {
  static int auto = 0;

  static int narrow = 1;

  static int short = 2;

  static int long = 3;

  static int menu = 4;
}

abstract class ICU4XDisplayNamesFallback {
  static int code = 0;

  static int none = 1;
}

abstract class ICU4XLanguageDisplay {
  static int dialect = 0;

  static int standard = 1;
}

abstract class ICU4XDateLength {
  static int full = 0;

  static int long = 1;

  static int medium = 2;

  static int short = 3;
}

abstract class ICU4XCollatorStrength {
  static int auto = 0;

  static int primary = 1;

  static int secondary = 2;

  static int tertiary = 3;

  static int quaternary = 4;

  static int identical = 5;
}

abstract class ICU4XCollatorAlternateHandling {
  static int auto = 0;

  static int nonIgnorable = 1;

  static int shifted = 2;
}

abstract class ICU4XCollatorCaseFirst {
  static int auto = 0;

  static int off = 1;

  static int lowerFirst = 2;

  static int upperFirst = 3;
}

abstract class ICU4XCollatorMaxVariable {
  static int auto = 0;

  static int space = 1;

  static int punctuation = 2;

  static int symbol = 3;

  static int currency = 4;
}

abstract class ICU4XCollatorCaseLevel {
  static int auto = 0;

  static int off = 1;

  static int on = 2;
}

abstract class ICU4XCollatorNumeric {
  static int auto = 0;

  static int off = 1;

  static int on = 2;
}

abstract class ICU4XCollatorBackwardSecondLevel {
  static int auto = 0;

  static int off = 1;

  static int on = 2;
}

abstract class ICU4XIsoTimeZoneFormat {
  static int basic = 0;

  static int extended = 1;

  static int utcBasic = 2;

  static int utcExtended = 3;
}

abstract class ICU4XIsoTimeZoneMinuteDisplay {
  static int required = 0;

  static int optional = 1;
}

abstract class ICU4XIsoTimeZoneSecondDisplay {
  static int optional = 0;

  static int never = 1;
}

abstract class ICU4XBidiDirection {
  static int ltr = 0;

  static int rtl = 1;

  static int mixed = 2;
}

abstract class ICU4XListLength {
  static int wide = 0;

  static int short = 1;

  static int narrow = 2;
}

abstract class ICU4XLineBreakStrictness {
  static int loose = 0;

  static int normal = 1;

  static int strict = 2;

  static int anywhere = 3;
}

abstract class ICU4XLineBreakWordOption {
  static int normal = 0;

  static int breakAll = 1;

  static int keepAll = 2;
}

abstract class ICU4XSegmenterWordType {
  static int none = 0;

  static int number = 1;

  static int letter = 2;
}

abstract class ICU4XFixedDecimalGroupingStrategy {
  static int auto = 0;

  static int never = 1;

  static int always = 2;

  static int min2 = 3;
}

abstract class ICU4XFixedDecimalSign {
  static int none = 0;

  static int negative = 1;

  static int positive = 2;
}

abstract class ICU4XFixedDecimalSignDisplay {
  static int auto = 0;

  static int never = 1;

  static int always = 2;

  static int exceptZero = 3;

  static int negative = 4;
}
