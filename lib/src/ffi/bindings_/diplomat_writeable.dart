part of icu4d_ffi_bindings;

final diplomatWriteableBindings = _DiplomatWriteableBindings();

final class _DiplomatWriteableBindings {
  final ffi.Pointer<DiplomatWriteable> Function(int cap) create =
      bindings.dynamicLibrary.lookupFunction<
          ffi.Pointer<DiplomatWriteable> Function(ffi.Size),
          ffi.Pointer<DiplomatWriteable> Function(int)>(
    'diplomat_buffer_writeable_create',
    isLeaf: true,
  );

  final void Function(ffi.Pointer<DiplomatWriteable> writable) destroy =
      bindings.dynamicLibrary.lookupFunction<
          ffi.Void Function(ffi.Pointer<DiplomatWriteable>),
          void Function(ffi.Pointer<DiplomatWriteable>)>(
    'diplomat_buffer_writeable_destroy',
    isLeaf: true,
  );
}

final class DiplomatWriteable extends ffi.Struct {
  // ignore: unused_element
  external ffi.Pointer<ffi.Void> get _context;

  external ffi.Pointer<ffi.Uint8> get _buf;

  @ffi.Size()
  external int get _len;

  String get asStringFromAscii {
    final len = _len;
    if (len == 0) {
      return '';
    }

    return String.fromCharCodes(_buf.asTypedList(len));
  }

  String get asStringFromUtf8 {
    final len = _len;
    if (len == 0) {
      return '';
    }

    return utf8.decode(_buf.asTypedList(len));
  }
}
