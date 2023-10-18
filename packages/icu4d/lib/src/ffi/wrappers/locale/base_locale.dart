part of icu4d_ffi;

sealed class BaseLocale implements ffi.Finalizable, Comparable<BaseLocale> {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.locale.destroyPointer.cast(),
  );

  static const String undTag = 'und';

  // equal to `Locale.fromString(str).toString()`
  static String canonicalize(String str) {
    assert(str.length >= 2);
    assert(str.isAscii);

    final strPointer = str.toAscii();
    try {
      final writable = icu4XBindings.diplomat.bufferWriteableCreate(18);

      try {
        final res = icu4XBindings.locale.canonicalize(
          strPointer.pointer,
          strPointer.length,
          writable,
        );

        if (res.is_ok) {
          return writable.ref.asAsciiString;
        }

        throw FFIError(res.err);
      } finally {
        icu4XBindings.diplomat.bufferWriteableDestroy(writable);
      }
    } finally {
      strPointer.free();
    }
  }

  final ffi.Pointer<ICU4XLocale> _locale;

  BaseLocale._(this._locale) {
    _finalizer.attach(this, _locale.cast());
  }

  String get basename {
    // language -  2...3
    // script - 4 - optional
    // region - 2...3 - optional
    // variants - 4...8 - list - 0...?
    // 3 + 4 + 3 + 8 = 18

    return _returnAscii(18, _locale, icu4XBindings.locale.basename);
  }

  String get language {
    return _returnAscii(3, _locale, icu4XBindings.locale.language);
  }

  String? get region {
    return _returnAsciiNullable(3, _locale, icu4XBindings.locale.region);
  }

  String? get script {
    return _returnAsciiNullable(4, _locale, icu4XBindings.locale.script);
  }

  // empty string == 'true'
  String? getUnicodeExtensionBy(String key) {
    assert(key.length == 2);
    assert(key.isAscii);

    final keyBytes = key.toAscii();

    final writable = icu4XBindings.diplomat.bufferWriteableCreate(8);

    final res = icu4XBindings.locale.getUnicodeExtension(
      _locale,
      keyBytes.pointer,
      keyBytes.length,
      writable,
    );

    keyBytes.free();

    if (res.is_ok) {
      final resStr = writable.ref.asAsciiString;

      icu4XBindings.diplomat.bufferWriteableDestroy(writable);

      return resStr;
    }

    icu4XBindings.diplomat.bufferWriteableDestroy(writable);

    if (res.err == ICU4XError.localeUndefinedSubtagError) {
      return null;
    }

    throw FFIError(res.err);
  }

  Locale clone() {
    return Locale._(icu4XBindings.locale.clone(_locale));
  }

  MutableLocale mutableClone() {
    return MutableLocale._(icu4XBindings.locale.clone(_locale));
  }

  // equal to this == Locale.fromString(other)
  bool normalizingEquality(String other) {
    assert(other.length >= 2);
    assert(other.isAscii);

    final otherPointer = other.toAscii();
    try {
      return icu4XBindings.locale.normalizingEq(
        _locale,
        otherPointer.pointer,
        otherPointer.length,
      );
    } finally {
      otherPointer.free();
    }
  }

  // no canonization for other
  int strictCompare(String other) {
    assert(other.length >= 2);
    assert(other.isAscii);

    final otherPointer = other.toAscii();
    try {
      return icu4XBindings.locale.strictCmp(
        _locale,
        otherPointer.pointer,
        otherPointer.length,
      );
    } finally {
      otherPointer.free();
    }
  }

  @override
  int compareTo(BaseLocale other) {
    final writablePointer = icu4XBindings.diplomat.bufferWriteableCreate(18);
    try {
      final res =
          icu4XBindings.locale.toString_(other._locale, writablePointer);

      if (res.is_ok) {
        final writable = writablePointer.ref;
        return icu4XBindings.locale.strictCmp(
          _locale,
          writable.buf,
          writable.len,
        );
      }

      throw FFIError(res.err);
    } finally {
      icu4XBindings.diplomat.bufferWriteableDestroy(writablePointer);
    }
  }

  @override
  String toString() {
    return _returnAscii(18, _locale, icu4XBindings.locale.toString_);
  }

  static ffi.Pointer<ICU4XLocale> _fromString(String name) {
    assert(name.length >= 2, 'The given language subtag is invalid');
    assert(name.isAscii);

    final namePointer = name.toAscii();
    try {
      final res = icu4XBindings.locale.createFromString(
        namePointer.pointer,
        namePointer.length,
      );

      if (res.is_ok) {
        return res.value.ok;
      }

      throw FFIError(res.value.err);
    } finally {
      namePointer.free();
    }
  }

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static String _returnAscii<T>(
    int minCap,
    T pointer,
    ResultVoidOrICU4XError Function(
      T,
      ffi.Pointer<DiplomatWriteable>,
    ) callback,
  ) {
    final writable = icu4XBindings.diplomat.bufferWriteableCreate(minCap);
    try {
      final res = callback(pointer, writable);

      if (res.is_ok) {
        final resStr = writable.ref.asAsciiString;

        return resStr;
      }

      throw FFIError(res.err);
    } finally {
      icu4XBindings.diplomat.bufferWriteableDestroy(writable);
    }
  }

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static String? _returnAsciiNullable<T>(
    int minCap,
    T pointer,
    ResultVoidOrICU4XError Function(
      T,
      ffi.Pointer<DiplomatWriteable>,
    ) callback,
  ) {
    final writable = icu4XBindings.diplomat.bufferWriteableCreate(minCap);
    try {
      final res = callback(pointer, writable);

      if (res.is_ok) {
        final resStr = writable.ref.asAsciiString;

        return resStr;
      }

      if (res.err == ICU4XError.localeUndefinedSubtagError) {
        return null;
      }

      throw FFIError(res.err);
    } finally {
      icu4XBindings.diplomat.bufferWriteableDestroy(writable);
    }
  }
}
