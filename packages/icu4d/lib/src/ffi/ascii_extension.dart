part of icu4d_ffi;

extension StringAsciiPointer on String {
  ({ffi.Pointer<ffi.Uint8> bytes, int length}) toAscii() {
    final length = this.length;
    if (length == 0) {
      return (bytes: ffi.nullptr, length: 0);
    }

    final pointer = icu4XAllocator.allocate(length, 1);
    final buffer = pointer.asTypedList(length);

    for (int i = 0; i < length; i++) {
      buffer[i] = codeUnitAt(i);
    }

    return (
      bytes: pointer,
      length: length,
    );
  }
}
