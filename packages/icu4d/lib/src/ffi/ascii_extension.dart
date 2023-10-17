part of icu4d_ffi;

extension StringAsciiPointer on String {
  ({
    ffi.Pointer<ffi.Uint8> bytes,
    int length,
    void Function() free,
  }) toAscii() {
    final length = this.length;

    final pointer = icu4XAllocator.allocate(length, 1);
    final buffer = pointer.asTypedList(length);

    if (length > 0) {
      buffer[0] = 0;

      for (int i = 0; i < length; i++) {
        buffer[i] = codeUnitAt(i);
      }
    }

    return (
      bytes: pointer,
      length: length,
      free: () => icu4XAllocator.free(pointer, length, 1),
    );
  }
}
