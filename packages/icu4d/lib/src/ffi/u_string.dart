part of 'ffi.dart';

final class UString implements ffi.Finalizable {
  static final _nativeFinalizer = ffi.NativeFinalizer(ffi.malloc.nativeFree);

  static final empty = UString();

  final ffi.Pointer<ffi.Char> _pointer;
  final int _bytesLength;
  late final _utf8Length = _bytesLength - 1;

  UString._(this._pointer, this._bytesLength) {
    assert(_bytesLength > 0);

    _nativeFinalizer.attach(
      this,
      _pointer.cast(),
      externalSize: _bytesLength,
    );
  }

  factory UString([String? str]) {
    final int length;
    final Uint8List bytes;
    if (str == null || str.isEmpty) {
      length = 1;
      bytes = Uint8List(0);
    } else {
      bytes = utf8.encode(str);
      length = bytes.length + 1;
    }

    final pointer = ffi.malloc.allocate<ffi.Uint8>(length);
    pointer.asTypedList(length)
      ..setAll(0, bytes)
      ..[bytes.length] = 0;

    return UString._(pointer.cast(), length);
  }

  bool get isEmpty => _bytesLength == 1;

  @override
  String toString() {
    return _pointer.cast<ffi.Utf8>().toDartString(
          length: _bytesLength - 1,
        );
  }
}

extension StringToUStringExtension on String {
  UString get uString => UString(this);
}
