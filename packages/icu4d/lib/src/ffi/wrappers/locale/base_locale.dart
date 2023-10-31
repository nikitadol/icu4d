part of '../../ffi.dart';

sealed class BaseLocale implements ffi.Finalizable, Comparable<BaseLocale> {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.locale.destroyPointer.cast(),
  );

  static const String undTag = 'und';

  // equal to `Locale.fromString(str).toString()`
  static String canonicalize(String str) {
    assert(str.length >= 2);
    assert(str.isAscii);

    final strPointer = _StringPointer.toAscii(str);
    final writeable = Writeable(18);

    final res = _bindings.locale.canonicalize(
      strPointer.pointer,
      strPointer.size,
      writeable.pointer,
    );

    strPointer.free();

    if (res.is_ok) {
      return writeable.fromAsciiAsString;
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

    return Writeable._returnAscii(18, _pointer, _bindings.locale.basename);
  }

  String get language {
    return Writeable._returnAscii(3, _pointer, _bindings.locale.language);
  }

  String? get region {
    return _returnAsciiNullable(3, _pointer, _bindings.locale.region);
  }

  String? get script {
    return _returnAsciiNullable(4, _pointer, _bindings.locale.script);
  }

  // empty string == 'true'
  String? getUnicodeExtensionBy(String key) {
    assert(key.length == 2);
    assert(key.isAscii);

    final keyPointer = _StringPointer.toAscii(key);

    final writeable = Writeable(8);

    final res = _bindings.locale.getUnicodeExtension(
      _pointer,
      keyPointer.pointer,
      keyPointer.size,
      writeable.pointer,
    );

    keyPointer.free();

    if (res.is_ok) {
      final resStr = writeable.fromAsciiAsString;

      return resStr;
    }

    if (res.err == ICU4XError.localeUndefinedSubtagError) {
      return null;
    }

    throw FFIError(res.err);
  }

  Locale clone() {
    return Locale._(_bindings.locale.clone(_pointer));
  }

  MutableLocale mutableClone() {
    return MutableLocale._(_bindings.locale.clone(_pointer));
  }

  // equal to this == Locale.fromString(other)
  bool normalizingEquality(String other) {
    assert(other.length >= 2);
    assert(other.isAscii);

    final otherPointer = _StringPointer.toAscii(other);

    final result = _bindings.locale.normalizingEq(
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

    final otherPointer = _StringPointer.toAscii(other);

    final res = _bindings.locale.strictCmp(
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

    final res = _bindings.locale.toString_(
      other._pointer,
      writeable.pointer,
    );

    if (res.is_ok) {
      final writable = writeable.pointer.ref;

      final res = _bindings.locale.strictCmp(
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
    return Writeable._returnAscii(18, _pointer, _bindings.locale.toString_);
  }

  static ffi.Pointer<ICU4XLocale> _fromString(String? name) {
    if (name == null) {
      return _bindings.locale.createUnd();
    }

    assert(name.isAscii);
    assert(name.trim().length == name.length);
    assert(name.length >= 2, 'The given language subtag is invalid');

    final namePointer = _StringPointer.toAscii(name);

    final res = _bindings.locale.createFromString(
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
  static String? _returnAsciiNullable(
    int minCap,
    ffi.Pointer<ICU4XLocale> pointer,
    ResultVoidOrICU4XError Function(
      ffi.Pointer<ICU4XLocale>,
      ffi.Pointer<DiplomatWriteable>,
    ) callback,
  ) {
    final writeable = Writeable(minCap);
    final res = callback(pointer, writeable.pointer);

    if (res.is_ok) {
      final resStr = writeable.fromAsciiAsString;

      return resStr;
    }

    if (res.err == ICU4XError.localeUndefinedSubtagError) {
      return null;
    }

    throw FFIError(res.err);
  }
}
