part of icu4d_ffi;

sealed class LocaleBase implements ffi.Finalizable {
  static const undTag = 'und';

  final ffi.Pointer<ICU4XLocale> _locale;

  LocaleBase._(this._locale);

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

  String get region {
    return _returnAscii(3, _locale, icu4XBindings.locale.region);
  }

  String get script {
    return _returnAscii(4, _locale, icu4XBindings.locale.script);
  }

  String? getUnicodeExtensionBy(String key) {
    assert(key.length == 2);

    final keyBytes = key.toAscii();

    final writable = icu4XBindings.diplomat.bufferWriteableCreate(8);

    final res = icu4XBindings.locale.getUnicodeExtension(
      _locale,
      keyBytes.bytes,
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

    throw FFIError(res.err);
  }

  @override
  String toString() {
    return _returnAscii(18, _locale, icu4XBindings.locale.toString_);
  }
}

@pragma('vm:prefer-inline')
@pragma('vm:always-consider-inlining')
@pragma('dart2js:prefer-inline')
String _returnAscii<T>(
  int minCap,
  T pointer,
  ResultVoidOrICU4XError Function(
    T,
    ffi.Pointer<DiplomatWriteable>,
  ) callback,
) {
  final writable = icu4XBindings.diplomat.bufferWriteableCreate(minCap);
  final res = callback(pointer, writable);

  if (res.is_ok) {
    final resStr = writable.ref.asAsciiString;

    icu4XBindings.diplomat.bufferWriteableDestroy(writable);

    return resStr;
  }

  icu4XBindings.diplomat.bufferWriteableDestroy(writable);

  throw FFIError(res.err);
}
