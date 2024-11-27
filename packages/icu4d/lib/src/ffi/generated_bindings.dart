// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

class IcuLib {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  IcuLib(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  IcuLib.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  diplomat_result_box_ICU4XLocale_ICU4XError ICU4XLocale_create_from_string(
    ffi.Pointer<ffi.Char> name_data,
    int name_len,
  ) {
    return _ICU4XLocale_create_from_string(
      name_data,
      name_len,
    );
  }

  late final _ICU4XLocale_create_from_stringPtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_box_ICU4XLocale_ICU4XError Function(
              ffi.Pointer<ffi.Char>,
              ffi.Size)>>('ICU4XLocale_create_from_string');
  late final _ICU4XLocale_create_from_string =
      _ICU4XLocale_create_from_stringPtr.asFunction<
          diplomat_result_box_ICU4XLocale_ICU4XError Function(
              ffi.Pointer<ffi.Char>, int)>(isLeaf: true);

  ffi.Pointer<ICU4XLocale> ICU4XLocale_create_und() {
    return _ICU4XLocale_create_und();
  }

  late final _ICU4XLocale_create_undPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ICU4XLocale> Function()>>(
          'ICU4XLocale_create_und');
  late final _ICU4XLocale_create_und = _ICU4XLocale_create_undPtr.asFunction<
      ffi.Pointer<ICU4XLocale> Function()>(isLeaf: true);

  ffi.Pointer<ICU4XLocale> ICU4XLocale_clone(
    ffi.Pointer<ICU4XLocale> self,
  ) {
    return _ICU4XLocale_clone(
      self,
    );
  }

  late final _ICU4XLocale_clonePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocale>)>>('ICU4XLocale_clone');
  late final _ICU4XLocale_clone = _ICU4XLocale_clonePtr.asFunction<
      ffi.Pointer<ICU4XLocale> Function(
          ffi.Pointer<ICU4XLocale>)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_basename(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ICU4XDiplomatWriteable> write,
  ) {
    return _ICU4XLocale_basename(
      self,
      write,
    );
  }

  late final _ICU4XLocale_basenamePtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ICU4XDiplomatWriteable>)>>('ICU4XLocale_basename');
  late final _ICU4XLocale_basename = _ICU4XLocale_basenamePtr.asFunction<
      diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
          ffi.Pointer<ICU4XDiplomatWriteable>)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_get_unicode_extension(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Char> bytes_data,
    int bytes_len,
    ffi.Pointer<ICU4XDiplomatWriteable> write,
  ) {
    return _ICU4XLocale_get_unicode_extension(
      self,
      bytes_data,
      bytes_len,
      write,
    );
  }

  late final _ICU4XLocale_get_unicode_extensionPtr = _lookup<
          ffi.NativeFunction<
              diplomat_result_void_ICU4XError Function(
                  ffi.Pointer<ICU4XLocale>,
                  ffi.Pointer<ffi.Char>,
                  ffi.Size,
                  ffi.Pointer<ICU4XDiplomatWriteable>)>>(
      'ICU4XLocale_get_unicode_extension');
  late final _ICU4XLocale_get_unicode_extension =
      _ICU4XLocale_get_unicode_extensionPtr.asFunction<
          diplomat_result_void_ICU4XError Function(
              ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ffi.Char>,
              int,
              ffi.Pointer<ICU4XDiplomatWriteable>)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_language(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ICU4XDiplomatWriteable> write,
  ) {
    return _ICU4XLocale_language(
      self,
      write,
    );
  }

  late final _ICU4XLocale_languagePtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ICU4XDiplomatWriteable>)>>('ICU4XLocale_language');
  late final _ICU4XLocale_language = _ICU4XLocale_languagePtr.asFunction<
      diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
          ffi.Pointer<ICU4XDiplomatWriteable>)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_set_language(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Char> bytes_data,
    int bytes_len,
  ) {
    return _ICU4XLocale_set_language(
      self,
      bytes_data,
      bytes_len,
    );
  }

  late final _ICU4XLocale_set_languagePtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('ICU4XLocale_set_language');
  late final _ICU4XLocale_set_language =
      _ICU4XLocale_set_languagePtr.asFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ffi.Char>, int)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_region(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ICU4XDiplomatWriteable> write,
  ) {
    return _ICU4XLocale_region(
      self,
      write,
    );
  }

  late final _ICU4XLocale_regionPtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ICU4XDiplomatWriteable>)>>('ICU4XLocale_region');
  late final _ICU4XLocale_region = _ICU4XLocale_regionPtr.asFunction<
      diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
          ffi.Pointer<ICU4XDiplomatWriteable>)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_set_region(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Char> bytes_data,
    int bytes_len,
  ) {
    return _ICU4XLocale_set_region(
      self,
      bytes_data,
      bytes_len,
    );
  }

  late final _ICU4XLocale_set_regionPtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('ICU4XLocale_set_region');
  late final _ICU4XLocale_set_region = _ICU4XLocale_set_regionPtr.asFunction<
      diplomat_result_void_ICU4XError Function(
          ffi.Pointer<ICU4XLocale>, ffi.Pointer<ffi.Char>, int)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_script(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ICU4XDiplomatWriteable> write,
  ) {
    return _ICU4XLocale_script(
      self,
      write,
    );
  }

  late final _ICU4XLocale_scriptPtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ICU4XDiplomatWriteable>)>>('ICU4XLocale_script');
  late final _ICU4XLocale_script = _ICU4XLocale_scriptPtr.asFunction<
      diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
          ffi.Pointer<ICU4XDiplomatWriteable>)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_set_script(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Char> bytes_data,
    int bytes_len,
  ) {
    return _ICU4XLocale_set_script(
      self,
      bytes_data,
      bytes_len,
    );
  }

  late final _ICU4XLocale_set_scriptPtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ffi.Char>, ffi.Size)>>('ICU4XLocale_set_script');
  late final _ICU4XLocale_set_script = _ICU4XLocale_set_scriptPtr.asFunction<
      diplomat_result_void_ICU4XError Function(
          ffi.Pointer<ICU4XLocale>, ffi.Pointer<ffi.Char>, int)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_canonicalize(
    ffi.Pointer<ffi.Char> bytes_data,
    int bytes_len,
    ffi.Pointer<ICU4XDiplomatWriteable> write,
  ) {
    return _ICU4XLocale_canonicalize(
      bytes_data,
      bytes_len,
      write,
    );
  }

  late final _ICU4XLocale_canonicalizePtr = _lookup<
          ffi.NativeFunction<
              diplomat_result_void_ICU4XError Function(ffi.Pointer<ffi.Char>,
                  ffi.Size, ffi.Pointer<ICU4XDiplomatWriteable>)>>(
      'ICU4XLocale_canonicalize');
  late final _ICU4XLocale_canonicalize =
      _ICU4XLocale_canonicalizePtr.asFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ffi.Char>, int,
              ffi.Pointer<ICU4XDiplomatWriteable>)>(isLeaf: true);

  diplomat_result_void_ICU4XError ICU4XLocale_to_string(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ICU4XDiplomatWriteable> write,
  ) {
    return _ICU4XLocale_to_string(
      self,
      write,
    );
  }

  late final _ICU4XLocale_to_stringPtr = _lookup<
      ffi.NativeFunction<
          diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ICU4XDiplomatWriteable>)>>('ICU4XLocale_to_string');
  late final _ICU4XLocale_to_string = _ICU4XLocale_to_stringPtr.asFunction<
      diplomat_result_void_ICU4XError Function(ffi.Pointer<ICU4XLocale>,
          ffi.Pointer<ICU4XDiplomatWriteable>)>(isLeaf: true);

  ICU4XOrdering ICU4XLocale_total_cmp(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ICU4XLocale> other,
  ) {
    return ICU4XOrdering.fromValue(_ICU4XLocale_total_cmp(
      self,
      other,
    ));
  }

  late final _ICU4XLocale_total_cmpPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ICU4XLocale>,
              ffi.Pointer<ICU4XLocale>)>>('ICU4XLocale_total_cmp');
  late final _ICU4XLocale_total_cmp = _ICU4XLocale_total_cmpPtr.asFunction<
      int Function(
          ffi.Pointer<ICU4XLocale>, ffi.Pointer<ICU4XLocale>)>(isLeaf: true);

  void ICU4XLocale_destroy(
    ffi.Pointer<ICU4XLocale> self,
  ) {
    return _ICU4XLocale_destroy(
      self,
    );
  }

  late final _ICU4XLocale_destroyPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ICU4XLocale>)>>(
          'ICU4XLocale_destroy');
  late final _ICU4XLocale_destroy = _ICU4XLocale_destroyPtr.asFunction<
      void Function(ffi.Pointer<ICU4XLocale>)>(isLeaf: true);

  ffi.Pointer<ICU4XDiplomatWriteable> diplomat_buffer_writeable_create(
    int cap,
  ) {
    return _diplomat_buffer_writeable_create(
      cap,
    );
  }

  late final _diplomat_buffer_writeable_createPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ICU4XDiplomatWriteable> Function(
              ffi.Size)>>('diplomat_buffer_writeable_create');
  late final _diplomat_buffer_writeable_create =
      _diplomat_buffer_writeable_createPtr
          .asFunction<ffi.Pointer<ICU4XDiplomatWriteable> Function(int)>(
              isLeaf: true);

  void diplomat_buffer_writeable_destroy(
    ffi.Pointer<ICU4XDiplomatWriteable> t,
  ) {
    return _diplomat_buffer_writeable_destroy(
      t,
    );
  }

  late final _diplomat_buffer_writeable_destroyPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<ICU4XDiplomatWriteable>)>>(
      'diplomat_buffer_writeable_destroy');
  late final _diplomat_buffer_writeable_destroy =
      _diplomat_buffer_writeable_destroyPtr
          .asFunction<void Function(ffi.Pointer<ICU4XDiplomatWriteable>)>(
              isLeaf: true);

  late final addresses = _SymbolAddresses(this);
}

class _SymbolAddresses {
  final IcuLib _library;
  _SymbolAddresses(this._library);
  ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ICU4XLocale>)>>
      get ICU4XLocale_destroy => _library._ICU4XLocale_destroyPtr;
  ffi.Pointer<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<ICU4XDiplomatWriteable>)>>
      get diplomat_buffer_writeable_destroy =>
          _library._diplomat_buffer_writeable_destroyPtr;
}

final class ICU4XDiplomatWriteable extends ffi.Struct {
  external ffi.Pointer<ffi.Void> context;

  external ffi.Pointer<ffi.Char> buf;

  @ffi.Size()
  external int len;

  @ffi.Size()
  external int cap;

  external ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ICU4XDiplomatWriteable>)>> flush;

  external ffi.Pointer<
          ffi.NativeFunction<
              ffi.Bool Function(ffi.Pointer<ICU4XDiplomatWriteable>, ffi.Size)>>
      grow;
}

enum ICU4XError {
  ICU4XError_UnknownError(0),
  ICU4XError_WriteableError(1),
  ICU4XError_OutOfBoundsError(2),
  ICU4XError_Utf8Error(3),
  ICU4XError_DataMissingDataKeyError(256),
  ICU4XError_DataMissingVariantError(257),
  ICU4XError_DataMissingLocaleError(258),
  ICU4XError_DataNeedsVariantError(259),
  ICU4XError_DataNeedsLocaleError(260),
  ICU4XError_DataExtraneousLocaleError(261),
  ICU4XError_DataFilteredResourceError(262),
  ICU4XError_DataMismatchedTypeError(263),
  ICU4XError_DataMissingPayloadError(264),
  ICU4XError_DataInvalidStateError(265),
  ICU4XError_DataCustomError(266),
  ICU4XError_DataIoError(267),
  ICU4XError_DataUnavailableBufferFormatError(268),
  ICU4XError_DataMismatchedAnyBufferError(269),
  ICU4XError_LocaleUndefinedSubtagError(512),
  ICU4XError_LocaleParserLanguageError(513),
  ICU4XError_LocaleParserSubtagError(514),
  ICU4XError_LocaleParserExtensionError(515),
  ICU4XError_DataStructValidityError(768),
  ICU4XError_PropertyUnknownScriptIdError(1024),
  ICU4XError_PropertyUnknownGeneralCategoryGroupError(1025),
  ICU4XError_PropertyUnexpectedPropertyNameError(1026),
  ICU4XError_FixedDecimalLimitError(1280),
  ICU4XError_FixedDecimalSyntaxError(1281),
  ICU4XError_PluralsParserError(1536),
  ICU4XError_CalendarParseError(1792),
  ICU4XError_CalendarOverflowError(1793),
  ICU4XError_CalendarUnderflowError(1794),
  ICU4XError_CalendarOutOfRangeError(1795),
  ICU4XError_CalendarUnknownEraError(1796),
  ICU4XError_CalendarUnknownMonthCodeError(1797),
  ICU4XError_CalendarMissingInputError(1798),
  ICU4XError_CalendarUnknownKindError(1799),
  ICU4XError_CalendarMissingError(1800),
  ICU4XError_DateTimePatternError(2048),
  ICU4XError_DateTimeMissingInputFieldError(2049),
  ICU4XError_DateTimeSkeletonError(2050),
  ICU4XError_DateTimeUnsupportedFieldError(2051),
  ICU4XError_DateTimeUnsupportedOptionsError(2052),
  ICU4XError_DateTimeMissingWeekdaySymbolError(2053),
  ICU4XError_DateTimeMissingMonthSymbolError(2054),
  ICU4XError_DateTimeFixedDecimalError(2055),
  ICU4XError_DateTimeMismatchedCalendarError(2056),
  ICU4XError_TinyStrTooLargeError(2304),
  ICU4XError_TinyStrContainsNullError(2305),
  ICU4XError_TinyStrNonAsciiError(2306),
  ICU4XError_TimeZoneOffsetOutOfBoundsError(2560),
  ICU4XError_TimeZoneInvalidOffsetError(2561),
  ICU4XError_TimeZoneMissingInputError(2562),
  ICU4XError_TimeZoneInvalidIdError(2563),
  ICU4XError_NormalizerFutureExtensionError(2816),
  ICU4XError_NormalizerValidationError(2817),
  ICU4XError_InvalidCldrUnitIdentifierError(3072);

  final int value;
  const ICU4XError(this.value);

  static ICU4XError fromValue(int value) => switch (value) {
        0 => ICU4XError_UnknownError,
        1 => ICU4XError_WriteableError,
        2 => ICU4XError_OutOfBoundsError,
        3 => ICU4XError_Utf8Error,
        256 => ICU4XError_DataMissingDataKeyError,
        257 => ICU4XError_DataMissingVariantError,
        258 => ICU4XError_DataMissingLocaleError,
        259 => ICU4XError_DataNeedsVariantError,
        260 => ICU4XError_DataNeedsLocaleError,
        261 => ICU4XError_DataExtraneousLocaleError,
        262 => ICU4XError_DataFilteredResourceError,
        263 => ICU4XError_DataMismatchedTypeError,
        264 => ICU4XError_DataMissingPayloadError,
        265 => ICU4XError_DataInvalidStateError,
        266 => ICU4XError_DataCustomError,
        267 => ICU4XError_DataIoError,
        268 => ICU4XError_DataUnavailableBufferFormatError,
        269 => ICU4XError_DataMismatchedAnyBufferError,
        512 => ICU4XError_LocaleUndefinedSubtagError,
        513 => ICU4XError_LocaleParserLanguageError,
        514 => ICU4XError_LocaleParserSubtagError,
        515 => ICU4XError_LocaleParserExtensionError,
        768 => ICU4XError_DataStructValidityError,
        1024 => ICU4XError_PropertyUnknownScriptIdError,
        1025 => ICU4XError_PropertyUnknownGeneralCategoryGroupError,
        1026 => ICU4XError_PropertyUnexpectedPropertyNameError,
        1280 => ICU4XError_FixedDecimalLimitError,
        1281 => ICU4XError_FixedDecimalSyntaxError,
        1536 => ICU4XError_PluralsParserError,
        1792 => ICU4XError_CalendarParseError,
        1793 => ICU4XError_CalendarOverflowError,
        1794 => ICU4XError_CalendarUnderflowError,
        1795 => ICU4XError_CalendarOutOfRangeError,
        1796 => ICU4XError_CalendarUnknownEraError,
        1797 => ICU4XError_CalendarUnknownMonthCodeError,
        1798 => ICU4XError_CalendarMissingInputError,
        1799 => ICU4XError_CalendarUnknownKindError,
        1800 => ICU4XError_CalendarMissingError,
        2048 => ICU4XError_DateTimePatternError,
        2049 => ICU4XError_DateTimeMissingInputFieldError,
        2050 => ICU4XError_DateTimeSkeletonError,
        2051 => ICU4XError_DateTimeUnsupportedFieldError,
        2052 => ICU4XError_DateTimeUnsupportedOptionsError,
        2053 => ICU4XError_DateTimeMissingWeekdaySymbolError,
        2054 => ICU4XError_DateTimeMissingMonthSymbolError,
        2055 => ICU4XError_DateTimeFixedDecimalError,
        2056 => ICU4XError_DateTimeMismatchedCalendarError,
        2304 => ICU4XError_TinyStrTooLargeError,
        2305 => ICU4XError_TinyStrContainsNullError,
        2306 => ICU4XError_TinyStrNonAsciiError,
        2560 => ICU4XError_TimeZoneOffsetOutOfBoundsError,
        2561 => ICU4XError_TimeZoneInvalidOffsetError,
        2562 => ICU4XError_TimeZoneMissingInputError,
        2563 => ICU4XError_TimeZoneInvalidIdError,
        2816 => ICU4XError_NormalizerFutureExtensionError,
        2817 => ICU4XError_NormalizerValidationError,
        3072 => ICU4XError_InvalidCldrUnitIdentifierError,
        _ => throw ArgumentError("Unknown value for ICU4XError: $value"),
      };
}

final class UnnamedUnion2 extends ffi.Union {
  @ffi.UnsignedInt()
  external int errAsInt;

  ICU4XError get err => ICU4XError.fromValue(errAsInt);
}

final class diplomat_result_void_ICU4XError extends ffi.Struct {
  external UnnamedUnion2 unnamed;

  @ffi.Bool()
  external bool is_ok;
}

final class ICU4XLocale extends ffi.Opaque {}

final class UnnamedUnion4 extends ffi.Union {
  external ffi.Pointer<ICU4XLocale> ok;

  @ffi.UnsignedInt()
  external int errAsInt;

  ICU4XError get err => ICU4XError.fromValue(errAsInt);
}

final class diplomat_result_box_ICU4XLocale_ICU4XError extends ffi.Struct {
  external UnnamedUnion4 unnamed;

  @ffi.Bool()
  external bool is_ok;
}

enum ICU4XOrdering {
  ICU4XOrdering_Less(-1),
  ICU4XOrdering_Equal(0),
  ICU4XOrdering_Greater(1);

  final int value;
  const ICU4XOrdering(this.value);

  static ICU4XOrdering fromValue(int value) => switch (value) {
        -1 => ICU4XOrdering_Less,
        0 => ICU4XOrdering_Equal,
        1 => ICU4XOrdering_Greater,
        _ => throw ArgumentError("Unknown value for ICU4XOrdering: $value"),
      };
}
