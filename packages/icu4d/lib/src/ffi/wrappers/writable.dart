part of '../ffi.dart';

final class Writeable implements ffi.Finalizable {
  static final _nativeFinalizer = ffi.NativeFinalizer(
    _bindings.diplomat.bufferWriteableDestroyPointer.cast(),
  );

  final ffi.Pointer<DiplomatWriteable> pointer;

  Writeable._(this.pointer) {
    _nativeFinalizer.attach(this, pointer.cast(), detach: this);
  }

  factory Writeable(int cap) {
    return Writeable._(_bindings.diplomat.bufferWriteableCreate(cap));
  }

  String get fromAsciiAsString {
    final ref = pointer.ref;

    return String.fromCharCodes(ref.buf.asTypedList(ref.len));
  }

  String get fromUtf8AsString {
    final ref = pointer.ref;

    return utf8.decode(ref.buf.asTypedList(ref.len));
  }

  void free() {
    _nativeFinalizer.detach(this);
    _bindings.diplomat.bufferWriteableDestroy(pointer);
  }

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static String _returnAscii<T extends ffi.NativeType>(
    int minCap,
    ffi.Pointer<T> pointer,
    ResultVoidOrICU4XError Function(
      ffi.Pointer<T>,
      ffi.Pointer<DiplomatWriteable>,
    ) callback,
  ) {
    final writeable = Writeable(minCap);
    final res = callback(pointer, writeable.pointer);

    if (res.is_ok) {
      final resStr = writeable.fromAsciiAsString;

      return resStr;
    }

    throw FFIError(res.err);
  }
}
