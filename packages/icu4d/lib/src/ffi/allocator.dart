part of 'ffi.dart';

class Icu4XAllocator implements ffi.Allocator {
  const Icu4XAllocator();

  ffi.Pointer<ffi.NativeFinalizerFunction> get nativeFree =>
      _bindings.diplomat.dartFreePointer.cast();

  @override
  ffi.Pointer<T> allocate<T extends ffi.NativeType>(
    int byteCount, {
    int? alignment,
  }) {
    return _bindings.diplomat.dartAlloc(byteCount, alignment ?? 1).cast();
  }

  @override
  void free(ffi.Pointer<ffi.NativeType> pointer) {
    _bindings.diplomat.dartFree(pointer.cast());
  }

  ffi.Pointer<T> realloc<T extends ffi.NativeType>(
    ffi.Pointer<ffi.NativeType> pointer,
    int newSize,
  ) {
    return _bindings.diplomat.dartRealloc(pointer, newSize).cast();
  }
}
