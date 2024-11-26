part of 'ffi.dart';

abstract class LocaleBase implements ffi.Finalizable {
  static final _nativeFinalizer = ffi.NativeFinalizer(
    _icuLib.addresses.ICU4XLocale_destroy.cast(),
  );

  final ffi.Pointer<ICU4XLocale> _pointer;

  LocaleBase._(this._pointer) {
    _nativeFinalizer.attach(this, _pointer.cast());
  }

  static ffi.Pointer<ICU4XLocale> _createLocalePointer([UString? str]) {
    final ffi.Pointer<ICU4XLocale> pointer;

    if (str == null || str.isEmpty) {
      pointer = _icuLib.ICU4XLocale_create_und();
    } else {
      final result = _icuLib.ICU4XLocale_create_from_string(
        str._pointer,
        str._utf8Length,
      );
      if (result.is_ok) {
        pointer = result.unnamed.ok;
      } else {
        throw result.unnamed.err;
      }
    }

    return pointer;
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
}

final class Locale extends LocaleBase {
  Locale._(super.pointer) : super._();

  factory Locale([UString? str]) {
    return Locale._(LocaleBase._createLocalePointer(str));
  }
}

final class LocaleMutable extends LocaleBase {
  LocaleMutable._(super.pointer) : super._();

  factory LocaleMutable([UString? str]) {
    return LocaleMutable._(LocaleBase._createLocalePointer(str));
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
