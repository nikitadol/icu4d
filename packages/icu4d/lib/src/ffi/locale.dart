part of 'ffi.dart';

abstract base class LocaleBase
    implements ffi.Finalizable, Comparable<LocaleBase> {
  static final _nativeFinalizer = ffi.NativeFinalizer(
    _icuLib.addresses.ICU4XLocale_destroy.cast(),
  );

  final ffi.Pointer<ICU4XLocale> _pointer;

  LocaleBase._(this._pointer) {
    _nativeFinalizer.attach(this, _pointer.cast());
  }

  static ffi.Pointer<ICU4XLocale> _createUndLocale() {
    return _icuLib.ICU4XLocale_create_und();
  }

  static ffi.Pointer<ICU4XLocale>? _createLocalePointer([UString? str]) {
    final ffi.Pointer<ICU4XLocale>? pointer;

    if (str == null || str.isEmpty) {
      pointer = null;
    } else {
      final result = _icuLib.ICU4XLocale_create_from_string(
        str._pointer,
        str._utf8Length,
      );
      if (result.is_ok) {
        pointer = result.unnamed.ok;
      } else {
        pointer = null;
      }
    }

    return pointer;
  }

  static UString? canonicalize(UString str) {
    final writeable = DiplomatWriteable();
    final res = _icuLib.ICU4XLocale_canonicalize(
      str._pointer,
      str._utf8Length,
      writeable._pointer,
    );

    if (res.is_ok) {
      return UString('$writeable');
    }

    return null;
  }

  Locale copy() {
    return Locale._(_icuLib.ICU4XLocale_clone(_pointer));
  }

  LocaleMutable copyMutable() {
    return LocaleMutable._(_icuLib.ICU4XLocale_clone(_pointer));
  }

  UString get basename {
    final writeable = DiplomatWriteable();

    final res = _icuLib.ICU4XLocale_basename(_pointer, writeable._pointer);

    if (res.is_ok) {
      return UString('$writeable');
    }

    throw res.unnamed.err;
  }

  UString get language {
    final writeable = DiplomatWriteable();

    final res = _icuLib.ICU4XLocale_language(_pointer, writeable._pointer);

    if (res.is_ok) {
      return UString('$writeable');
    }

    throw res.unnamed.err;
  }

  UString? get region {
    final writeable = DiplomatWriteable();

    final res = _icuLib.ICU4XLocale_region(_pointer, writeable._pointer);

    if (res.is_ok) {
      return UString('$writeable');
    }

    return null;
  }

  UString? get script {
    final writeable = DiplomatWriteable();

    final res = _icuLib.ICU4XLocale_script(_pointer, writeable._pointer);

    if (res.is_ok) {
      return UString('$writeable');
    }

    return null;
  }

  UString? getUnicodeExtension(UString key) {
    final writeable = DiplomatWriteable();

    final res = _icuLib.ICU4XLocale_get_unicode_extension(
      _pointer,
      key._pointer,
      key._utf8Length,
      writeable._pointer,
    );

    if (res.is_ok) {
      return UString('$writeable');
    }

    return null;
  }

  @override
  String toString() {
    final writeable = DiplomatWriteable();

    final res = _icuLib.ICU4XLocale_to_string(_pointer, writeable._pointer);

    if (res.is_ok) {
      return '$writeable';
    }

    throw res.unnamed.err;
  }

  @override
  int compareTo(LocaleBase other) {
    return _icuLib.ICU4XLocale_total_cmp(
      _pointer,
      other._pointer,
    ).value;
  }
}

final class Locale extends LocaleBase {
  Locale._(super.pointer) : super._();

  factory Locale() {
    return Locale._(LocaleBase._createUndLocale());
  }

  static Locale? parse(UString str) {
    final pointer = LocaleBase._createLocalePointer(str);
    if (pointer == null) {
      return null;
    }

    return Locale._(pointer);
  }
}

final class LocaleMutable extends LocaleBase {
  LocaleMutable._(super.pointer) : super._();

  factory LocaleMutable() {
    return LocaleMutable._(LocaleBase._createUndLocale());
  }

  static LocaleMutable? parse(UString str) {
    final pointer = LocaleBase._createLocalePointer(str);
    if (pointer == null) {
      return null;
    }

    return LocaleMutable._(pointer);
  }

  set language(UString value) {
    final res = _icuLib.ICU4XLocale_set_language(
      _pointer,
      value._pointer,
      value._utf8Length,
    );

    if (res.is_ok) {
      return;
    }

    throw res.unnamed.err;
  }

  set region(UString? value) {
    value ??= UString.empty;

    final res = _icuLib.ICU4XLocale_set_region(
      _pointer,
      value._pointer,
      value._utf8Length,
    );

    if (res.is_ok) {
      return;
    }

    throw res.unnamed.err;
  }

  set script(UString? value) {
    value ??= UString.empty;

    final res = _icuLib.ICU4XLocale_set_script(
      _pointer,
      value._pointer,
      value._utf8Length,
    );

    if (res.is_ok) {
      return;
    }

    throw res.unnamed.err;
  }
}
