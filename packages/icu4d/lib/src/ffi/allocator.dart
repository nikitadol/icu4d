part of 'ffi.dart';

class Icu4XAllocator {
  const Icu4XAllocator();

  ffi.Pointer<ffi.Uint8> allocate(int size, int align) {
    return icu4XBindings.diplomat.alloc(size, align);
  }

  void free(ffi.Pointer<ffi.Uint8> pointer, int size, int align) {
    icu4XBindings.diplomat.free(pointer, size, align);
  }
}
