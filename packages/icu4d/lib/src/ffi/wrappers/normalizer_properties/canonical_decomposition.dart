part of '../../ffi.dart';

final class CanonicalDecomposition implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.canonicalComposition.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XCanonicalDecomposition> _pointer;

  CanonicalDecomposition._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory CanonicalDecomposition.from(DataProvider dataProvider) {
    final res = icu4XBindings.canonicalDecomposition.create(
      dataProvider._pointer,
    );

    if (res.is_ok) {
      return CanonicalDecomposition._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  (int, int?) decompose(int c) {
    assert(c >= 0 && c <= 0x10ffff);

    final res = icu4XBindings.canonicalDecomposition.decompose(
      _pointer,
      c,
    );

    return (res.first, res.second == 0 ? null : res.second);
  }
}
