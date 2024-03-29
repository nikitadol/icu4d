part of '../../ffi.dart';

final class MutableLocale extends BaseLocale {
  MutableLocale._(super.locale) : super._();

  factory MutableLocale([String? name]) {
    return MutableLocale._(BaseLocale._fromString(name));
  }

  set language(String value) {
    assert(2 <= value.length && value.length <= 3);
    assert(value.isAscii);

    _setAscii(value, _pointer, _bindings.locale.setLanguage);
  }

  set region(String? value) {
    if (value == null) {
      value = '';
    } else {
      assert(2 <= value.length && value.length <= 3);
      assert(value.isAscii);
    }

    _setAscii(value, _pointer, _bindings.locale.setRegion);
  }

  set script(String? value) {
    if (value == null) {
      value = '';
    } else {
      assert(value.length == 4);
      assert(value.isAscii);
    }

    _setAscii(value, _pointer, _bindings.locale.setScript);
  }

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static void _setAscii<T>(
    String value,
    T pointer,
    ResultVoidOrICU4XError Function(
      T,
      ffi.Pointer<ffi.Uint8>,
      int,
    ) callback,
  ) {
    final valuePointer = _StringPointer.toAscii(value);

    final res = callback(pointer, valuePointer.pointer, valuePointer.size);

    valuePointer.free();

    if (res.is_ok) {
      return;
    }

    throw FFIError(res.err);
  }
}
