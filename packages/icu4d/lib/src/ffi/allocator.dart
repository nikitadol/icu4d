part of 'ffi.dart';

class Icu4XAllocator {
  const Icu4XAllocator();

  ffi.Pointer<ffi.NativeFinalizerFunction> get nativeFree =>
      icu4XBindings.diplomat.dartFreePointer.cast();

  ffi.Pointer<ffi.Uint8> allocate(int size, int align) {
    return icu4XBindings.diplomat.dartAlloc(size, align);
  }

  void free(ffi.Pointer<ffi.Uint8> pointer) {
    icu4XBindings.diplomat.dartFree(pointer);
  }
}
