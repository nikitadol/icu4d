part of '../../ffi.dart';

final class BidiParagraph implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.bidiParagraph.destroyPointer.cast(),
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

    icu4XBindings.bidiParagraph.setParagraphInText(_pointer, n);
  }

  BidiDirection get direction {
    return BidiDirection._fromIcu4xValue(
      icu4XBindings.bidiParagraph.direction(_pointer),
    );
  }

  int get size {
    return icu4XBindings.bidiParagraph.size(_pointer);
  }

  int get rangeStart {
    return icu4XBindings.bidiParagraph.rangeStart(_pointer);
  }

  int get rangeEnd {
    return icu4XBindings.bidiParagraph.rangeEnd(_pointer);
  }

  String reorderLine(int rangeStart, int rangeEnd) {
    assert(rangeStart >= this.rangeStart && rangeEnd <= this.rangeEnd);
    final writeable = Writeable(0);

    final res = icu4XBindings.bidiParagraph.reorderLine(
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

    return icu4XBindings.bidiParagraph.levelAt(_pointer, pos);
  }
}
