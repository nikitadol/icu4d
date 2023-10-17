part of icu4d_ffi;

extension DiplomatWriteableAsAscii on DiplomatWriteable {
  String get asAsciiString => String.fromCharCodes(buf.asTypedList(len));
}

T usingWritable<T>(
  int minCap,
  T Function(ffi.Pointer<DiplomatWriteable> writable) callback,
) {
  final writable = icu4XBindings.diplomat.bufferWriteableCreate(minCap);
  try {
    return callback(writable);
  } finally {
    icu4XBindings.diplomat.bufferWriteableDestroy(writable);
  }
}
