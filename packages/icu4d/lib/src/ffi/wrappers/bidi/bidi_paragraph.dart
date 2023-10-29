part of '../../ffi.dart';

final class BidiParagraph implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.bidiParagraph.destroyPointer.cast(),
  );
  final ffi.Pointer<ICU4XBidiParagraph> _pointer;

  // for ref
  // ignore: unused_field
  final BidiInfo _info;

  BidiParagraph._(this._pointer, this._info) {
    _finalizer.attach(this, _pointer.cast());
  }

  void setParagraphInText(int n) {
    assert(n >= 0 && n < _info.paragraphCount);

    _bindings.bidiParagraph.setParagraphInText(_pointer, n);
  }

  BidiDirection get direction {
    return BidiDirection._fromIcu4xValue(
      _bindings.bidiParagraph.direction(_pointer),
    );
  }

  int get size {
    return _bindings.bidiParagraph.size(_pointer);
  }

  int get rangeStart {
    return _bindings.bidiParagraph.rangeStart(_pointer);
  }

  int get rangeEnd {
    return _bindings.bidiParagraph.rangeEnd(_pointer);
  }

  String reorderLine(int rangeStart, int rangeEnd) {
    assert(rangeStart >= this.rangeStart && rangeEnd <= this.rangeEnd);
    final writeable = Writeable(0);

    final res = _bindings.bidiParagraph.reorderLine(
      _pointer,
      rangeStart,
      rangeEnd,
      writeable.pointer,
    );

    if (res.is_ok) {
      final result = writeable.fromUtf8AsString;

      writeable.free();

      return result;
    }

    throw FFIError(res.err);
  }

  int levelAt(int pos) {
    assert(pos >= 0 && pos < size);

    return _bindings.bidiParagraph.levelAt(_pointer, pos);
  }
}
