part of 'shared.dart';

final class FFIError extends Error {
  final int code;

  FFIError(this.code);

  @override
  String toString() {
    return 'Error over FFI: ${_codeToName[code]?.skip(1).join('or')}\n$code ${_codeToName[code]?[0]}';
  }
}

const Map<int, List<String>> _codeToName = {
  0: [
    'UnknownError',
  ],
  1: [
    'WriteableError',
  ],
  2: [
    'OutOfBoundsError',
  ],
  256: [
    'DataMissingDataKeyError',
  ],
  257: [
    'DataMissingVariantError',
  ],
  258: [
    'DataMissingLocaleError',
  ],
  259: [
    'DataNeedsVariantError',
  ],
  260: [
    'DataNeedsLocaleError',
  ],
  261: [
    'DataExtraneousLocaleError',
  ],
  262: [
    'DataFilteredResourceError',
  ],
  263: [
    'DataMismatchedTypeError',
  ],
  264: [
    'DataMissingPayloadError',
  ],
  265: [
    'DataInvalidStateError',
  ],
  266: [
    'DataCustomError',
  ],
  267: [
    'DataIoError',
  ],
  268: [
    'DataUnavailableBufferFormatError',
  ],
  269: [
    'DataMismatchedAnyBufferError',
  ],
  512: [
    'LocaleUndefinedSubtagError',
  ],
  513: [
    'LocaleParserLanguageError',
    'The given language subtag is invalid',
    'The given subtag is invalid',
  ],
  514: [
    'LocaleParserSubtagError',
    'The given subtag is invalid',
    'Invalid subtag',
  ],
  515: [
    'LocaleParserExtensionError',
    'Invalid subtag',
    'Invalid extension',
  ],
  768: [
    'DataStructValidityError',
  ],
  1024: [
    'PropertyUnknownScriptIdError',
  ],
  1025: [
    'PropertyUnknownGeneralCategoryGroupError',
  ],
  1026: [
    'PropertyUnexpectedPropertyNameError',
  ],
  1280: [
    'FixedDecimalLimitError',
  ],
  1281: [
    'FixedDecimalSyntaxError',
  ],
  1536: [
    'PluralsParserError',
  ],
  1792: [
    'CalendarParseError',
  ],
  1793: [
    'CalendarOverflowError',
  ],
  1794: [
    'CalendarUnderflowError',
  ],
  1795: [
    'CalendarOutOfRangeError',
  ],
  1796: [
    'CalendarUnknownEraError',
  ],
  1797: [
    'CalendarUnknownMonthCodeError',
  ],
  1798: [
    'CalendarMissingInputError',
  ],
  1799: [
    'CalendarUnknownKindError',
  ],
  1800: [
    'CalendarMissingError',
  ],
  2048: [
    'DateTimePatternError',
  ],
  2049: [
    'DateTimeMissingInputFieldError',
  ],
  2050: [
    'DateTimeSkeletonError',
  ],
  2051: [
    'DateTimeUnsupportedFieldError',
  ],
  2052: [
    'DateTimeUnsupportedOptionsError',
  ],
  2053: [
    'DateTimeMissingWeekdaySymbolError',
  ],
  2054: [
    'DateTimeMissingMonthSymbolError',
  ],
  2055: [
    'DateTimeFixedDecimalError',
  ],
  2056: [
    'DateTimeMismatchedCalendarError',
  ],
  2304: [
    'TinyStrTooLargeError',
  ],
  2305: [
    'TinyStrContainsNullError',
  ],
  2306: [
    'TinyStrNonAsciiError',
  ],
  2560: [
    'TimeZoneOffsetOutOfBoundsError',
  ],
  2561: [
    'TimeZoneInvalidOffsetError',
  ],
  2562: [
    'TimeZoneMissingInputError',
  ],
  2816: [
    'NormalizerFutureExtensionError',
  ],
  2817: [
    'NormalizerValidationError',
  ],
};
