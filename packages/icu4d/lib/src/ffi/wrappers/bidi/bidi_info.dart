part of '../../ffi.dart';

// TODO(nikitadol): Strings in Dart are UTF-16, but this class works with UTF-8 -> the returned indexes will not be as expected
final class BidiInfo implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.bidiInfo.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XBidiInfo> _pointer;

  // for ref
  // ignore: unused_field
  final StringPointer _textPointer;

  BidiInfo._(this._pointer, this._textPointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  int get paragraphCount {
    return icu4XBindings.bidiInfo.paragraphCount(_pointer);
  }

  BidiParagraph paragraphAt(int n) {
    assert(n >= 0 && n < paragraphCount);

    return BidiParagraph._(
      icu4XBindings.bidiInfo.paragraphAt(_pointer, n),
      this,
    );
  }

  int get size {
    return icu4XBindings.bidiInfo.size(_pointer);
  }

  int levelAt(int pos) {
    assert(pos >= 0 && pos < size);

    return icu4XBindings.bidiInfo.levelAt(_pointer, pos);
  }
}
