part of '../../ffi.dart';

sealed class BaseLocale implements ffi.Finalizable, Comparable<BaseLocale> {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.locale.destroyPointer.cast(),
  );

  static const String undTag = 'und';

  // equal to `Locale.fromString(str).toString()`
  static String canonicalize(String str) {
    assert(str.length >= 2);
    assert(str.isAscii);

    final strPointer = StringPointer.toAscii(str);
    final writeable = Writeable(18);

    final res = icu4XBindings.locale.canonicalize(
      strPointer.pointer,
      strPointer.size,
      writeable.pointer,
    );

    strPointer.free();

    if (res.is_ok) {
      return writeable.asAsciiString;
    }

    throw FFIError(res.err);
  }

  final ffi.Pointer<ICU4XLocale> _pointer;

  BaseLocale._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  String get basename {
    // language -  2...3
    // script - 4 - optional
    // region - 2...3 - optional
    // variants - 4...8 - list - 0...?
    // 3 + 4 + 3 + 8 = 18

    return _returnAscii(18, _pointer, icu4XBindings.locale.basename);
  }

  String get language {
    return _returnAscii(3, _pointer, icu4XBindings.locale.language);
  }

  String? get region {
    return _returnAsciiNullable(3, _pointer, icu4XBindings.locale.region);
  }

  String? get script {
    return _returnAsciiNullable(4, _pointer, icu4XBindings.locale.script);
  }

  // empty string == 'true'
  String? getUnicodeExtensionBy(String key) {
    assert(key.length == 2);
    assert(key.isAscii);

    final keyPointer = StringPointer.toAscii(key);

    final writeable = Writeable(8);

    final res = icu4XBindings.locale.getUnicodeExtension(
      _pointer,
      keyPointer.pointer,
      keyPointer.size,
      writeable.pointer,
    );

    keyPointer.free();

    if (res.is_ok) {
      final resStr = writeable.asAsciiString;

      return resStr;
    }

    if (res.err == ICU4XError.localeUndefinedSubtagError) {
      return null;
    }

    throw FFIError(res.err);
  }

  Locale clone() {
    return Locale._(icu4XBindings.locale.clone(_pointer));
  }

  MutableLocale mutableClone() {
    return MutableLocale._(icu4XBindings.locale.clone(_pointer));
  }

  // equal to this == Locale.fromString(other)
  bool normalizingEquality(String other) {
    assert(other.length >= 2);
    assert(other.isAscii);

    final otherPointer = StringPointer.toAscii(other);

    final result = icu4XBindings.locale.normalizingEq(
      _pointer,
      otherPointer.pointer,
      otherPointer.size,
    );

    otherPointer.free();

    return result;
  }

  // no canonization for other
  int strictCompare(String other) {
    assert(other.length >= 2);
    assert(other.isAscii);

    final otherPointer = StringPointer.toAscii(other);

    final res = icu4XBindings.locale.strictCmp(
      _pointer,
      otherPointer.pointer,
      otherPointer.size,
    );

    otherPointer.free();

    return res;
  }

  @override
  int compareTo(BaseLocale other) {
    final writeable = Writeable(18);

    final res = icu4XBindings.locale.toString_(
      other._pointer,
      writeable.pointer,
    );

    if (res.is_ok) {
      final writable = writeable.pointer.ref;

      final res = icu4XBindings.locale.strictCmp(
        _pointer,
        writable.buf,
        writable.len,
      );

      writeable.free();

      return res;
    }

    throw FFIError(res.err);
  }

  @override
  String toString() {
    return _returnAscii(18, _pointer, icu4XBindings.locale.toString_);
  }

  static ffi.Pointer<ICU4XLocale> _fromString(String name) {
    assert(name.length >= 2, 'The given language subtag is invalid');
    assert(name.isAscii);

    final namePointer = StringPointer.toAscii(name);

    final res = icu4XBindings.locale.createFromString(
      namePointer.pointer,
      namePointer.size,
    );

    namePointer.free();

    if (res.is_ok) {
      return res.value.ok;
    }

    throw FFIError(res.value.err);
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
    final writeable = Writeable(minCap);
    final res = callback(pointer, writeable.pointer);

    if (res.is_ok) {
      final resStr = writeable.asAsciiString;

      return resStr;
    }

    throw FFIError(res.err);
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
    final writeable = Writeable(minCap);
    final res = callback(pointer, writeable.pointer);

    if (res.is_ok) {
      final resStr = writeable.asAsciiString;

      return resStr;
    }

    if (res.err == ICU4XError.localeUndefinedSubtagError) {
      return null;
    }

    throw FFIError(res.err);
  }
}
