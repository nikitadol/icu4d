part of '../../ffi.dart';

final class CanonicalCombiningClassMap implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.canonicalCombiningClassMap.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XCanonicalCombiningClassMap> _pointer;

  CanonicalCombiningClassMap._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory CanonicalCombiningClassMap.from(DataProvider provider) {
    final res = icu4XBindings.canonicalCombiningClassMap.create(
      provider._pointer,
    );

    if (res.is_ok) {
      return CanonicalCombiningClassMap._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  // TODO(nikitadol): need return enum
  int get(int char) {
    assert(char >= 0 && char <= 0x10ffff);

    return icu4XBindings.canonicalCombiningClassMap.get32(
      _pointer,
      char,
    );
  }
}
