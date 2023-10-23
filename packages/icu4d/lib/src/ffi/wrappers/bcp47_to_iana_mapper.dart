part of '../ffi.dart';

final class Bcp47ToIanaMapper implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.bcp47ToIanaMapper.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XBcp47ToIanaMapper> _pointer;

  Bcp47ToIanaMapper._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory Bcp47ToIanaMapper.from(DataProvider dataProvider) {
    final res = icu4XBindings.bcp47ToIanaMapper.create(dataProvider._pointer);

    if (res.is_ok) {
      return Bcp47ToIanaMapper._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  String? get(String value) {
    assert(value.isNotEmpty);
    assert(value.isAscii);

    final valuePointer = StringPointer.toAscii(value);
    final writeable = Writeable(0);

    final res = icu4XBindings.bcp47ToIanaMapper.get(
      _pointer,
      valuePointer.pointer,
      valuePointer.size,
      writeable.pointer,
    );

    valuePointer.free();

    if (res.is_ok) {
      final resStr = writeable.fromAsciiAsString;

      writeable.free();

      return resStr;
    }

    if (res.err == ICU4XError.timeZoneInvalidIdError) {
      return null;
    }

    throw FFIError(res.err);
  }
}
