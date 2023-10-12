part of icu4d_ffi_bindings;

class Icu4XAllocator {
  const Icu4XAllocator();

  ffi.Pointer<ffi.Uint8> allocate(int size, int align) {
    return bindings.diplomatAlloc(size, align);
  }

  void free(ffi.Pointer<ffi.Uint8> pointer, int size, int align) {
    bindings.diplomatFree(pointer, size, align);
  }
}
