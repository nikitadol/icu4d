part of icu4d_ffi;

extension StringUtf8Pointer on String {
  ({
    ffi.Pointer<ffi.Uint8> bytes,
    int length,
    void Function() free,
  }) toUtf8() {
    final length = this.length;

    assert(length > 0);

    int bufferLength = 0;

    for (int i = 0; i < length; i++) {
      final code = codeUnitAt(i);
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
      u16 = codeUnitAt(index++);

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
        u16 =
            (((u16 - 0xD800) << 10) | (codeUnitAt(index++) - 0xDC00)) + 0x10000;
        buffer[offset] = 0xF0 | (u16 >> 18);
        buffer[offset + 1] = 0x80 | ((u16 >> 12) & 0x3F);
        buffer[offset + 2] = 0x80 | ((u16 >> 6) & 0x3F);
        buffer[offset + 3] = 0x80 | (u16 & 0x3F);
        offset += 4;
      }
    } while (index < length);

    return (
      bytes: pointer,
      length: offset,
      free: () => icu4XAllocator.free(pointer, bufferLength, 1),
    );
  }
}
