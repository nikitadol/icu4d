part of 'ffi.dart';

final class DiplomatWriteable implements ffi.Finalizable {
  static final _nativeFinalizer = ffi.NativeFinalizer(
    _icuLib.addresses.diplomat_buffer_writeable_destroy.cast(),
  );

  final ffi.Pointer<ICU4XDiplomatWriteable> _pointer;

  DiplomatWriteable._(this._pointer) {
    _nativeFinalizer.attach(this, _pointer.cast());
  }

  factory DiplomatWriteable([int cap = 0]) {
    return DiplomatWriteable._(
      _icuLib.diplomat_buffer_writeable_create(cap),
    );
  }

  @override
  String toString() {
    return _pointer.ref.buf.cast<ffi.Utf8>().toDartString(
          length: _pointer.ref.len,
        );
  }
}
