part of '../ffi.dart';

final class StringPointer implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(icu4XAllocator.nativeFree);

  final ffi.Pointer<ffi.Uint8> pointer;
  final int size;

  StringPointer._(this.pointer, this.size) {
    _finalizer.attach(
      this,
      pointer.cast(),
      detach: this,
      externalSize: size,
    );
  }

  factory StringPointer.toAscii(String str) {
    assert(str.isAscii);

    final length = str.length;

    final pointer = icu4XAllocator.allocate(length, 1);
    final buffer = pointer.asTypedList(length);

    if (length > 0) {
      // remove CheckWritable
      buffer[0] = 0;

      for (int i = 0; i < length; i++) {
        buffer[i] = str.codeUnitAt(i);
      }
    }

    return StringPointer._(pointer, length);
  }

  factory StringPointer.toUtf8(String str) {
    assert(utf8.decode(utf8.encode(str)) == str);

    final length = str.length;

    assert(length > 0);

    int bufferLength = 0;

    for (int i = 0; i < length; i++) {
      final code = str.codeUnitAt(i);
      if (code < 0x80) {
        bufferLength += 1;
      } else if (code < 0x800) {
        bufferLength += 2;
      } else if (code < 0xD800 || code > 0xDFFF) {
        bufferLength += 3;
      } else {
        bufferLength += 4;
      }
    }
    final pointer = icu4XAllocator.allocate(bufferLength, 1);
    final buffer = pointer.asTypedList(bufferLength);
    // remove CheckWritable
    buffer[0] = 0;

    int offset = 0;
    int index = 0;
    int u16 = 0;
    do {
      u16 = str.codeUnitAt(index++);

      if ((u16 & 0xffffff80) == 0) {
        buffer[offset] = u16;
        offset += 1;
      } else if ((u16 & 0xfffff800) == 0) {
        buffer[offset] = 0xC0 | (u16 >> 6);
        buffer[offset + 1] = 0x80 | (u16 & 0x3F);
        offset += 2;
      } else if (u16 < 0xD800 || u16 > 0xDFFF) {
        buffer[offset] = 0xE0 | (u16 >> 12);
        buffer[offset + 1] = 0x80 | ((u16 >> 6) & 0x3F);
        buffer[offset + 2] = 0x80 | (u16 & 0x3F);
        offset += 3;
      } else {
        u16 = (((u16 - 0xD800) << 10) | (str.codeUnitAt(index++) - 0xDC00)) +
            0x10000;
        buffer[offset] = 0xF0 | (u16 >> 18);
        buffer[offset + 1] = 0x80 | ((u16 >> 12) & 0x3F);
        buffer[offset + 2] = 0x80 | ((u16 >> 6) & 0x3F);
        buffer[offset + 3] = 0x80 | (u16 & 0x3F);
        offset += 4;
      }
    } while (index < length);

    return StringPointer._(pointer, bufferLength);
  }

  void free() {
    _finalizer.detach(this);
    icu4XAllocator.free(pointer);
  }
}
