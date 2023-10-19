part of '../ffi.dart';

class Writeable implements ffi.Finalizable {
  final _nativeFinalizer = ffi.NativeFinalizer(
    icu4XBindings.diplomat.bufferWriteableDestroyPointer.cast(),
  );

  final ffi.Pointer<DiplomatWriteable> pointer;

  Writeable._(this.pointer) {
    _nativeFinalizer.attach(this, pointer.cast(), detach: this);
  }

  factory Writeable(int cap) {
    return Writeable._(icu4XBindings.diplomat.bufferWriteableCreate(cap));
  }

  String get asAsciiString {
    final ref = pointer.ref;

    return String.fromCharCodes(ref.buf.asTypedList(ref.len));
  }

  void free() {
    _nativeFinalizer.detach(this);
    icu4XBindings.diplomat.bufferWriteableDestroy(pointer);
  }
}