part of '../../ffi.dart';

final class CanonicalComposition implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.canonicalComposition.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XCanonicalComposition> _pointer;

  CanonicalComposition._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory CanonicalComposition.from(DataProvider dataProvider) {
    final res = _bindings.canonicalComposition.create(
      dataProvider._pointer,
    );

    if (res.is_ok) {
      return CanonicalComposition._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  int? compose(int starter, int second) {
    assert(starter >= 0 && starter <= 0x10ffff);
    assert(second >= 0 && second <= 0x10ffff);

    final res = _bindings.canonicalComposition.compose(
      _pointer,
      starter,
      second,
    );

    if (res == 0) {
      return null;
    }

    return res;
  }
}
