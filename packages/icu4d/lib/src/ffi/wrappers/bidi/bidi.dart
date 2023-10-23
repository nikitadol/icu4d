part of '../../ffi.dart';

final class Bidi implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.bidi.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XBidi> _pointer;

  Bidi._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory Bidi.from(DataProvider provider) {
    final res = icu4XBindings.bidi.create(provider._pointer);

    if (res.is_ok) {
      return Bidi._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  BidiInfo forText(String text, [int defaultLevel = 0]) {
    assert(defaultLevel >= 0 && defaultLevel <= 126);
    final textPointer = StringPointer.toUtf8(text);

    return BidiInfo._(
      icu4XBindings.bidi.forText(
        _pointer,
        textPointer.pointer,
        textPointer.size,
        defaultLevel,
      ),
      textPointer,
    );
  }

  bool levelIsLtr(int level) {
    assert(level >= 0 && level <= 126);

    return icu4XBindings.bidi.levelIsLtr(level);
  }

  bool levelIsRtl(int level) {
    assert(level >= 0 && level <= 126);

    return icu4XBindings.bidi.levelIsRtl(level);
  }

  int get levelLtr {
    return icu4XBindings.bidi.levelLtr();
  }

  int get levelRtl {
    return icu4XBindings.bidi.levelRtl();
  }

  List<int> reorderVisual(List<int> levels) {
    final length = levels.length;

    if (length == 0) {
      return const [];
    }

    assert(levels.every((level) => level >= 0 && level <= 126));

    final levelsPointer = icu4XAllocator.allocate(length, 1);

    final list = levelsPointer.asTypedList(length);

    list[0] = 0;
    for (int index = 0; index < length; index++) {
      list[index] = levels[index];
    }

    final reorderedIndexMap = icu4XBindings.bidi.reorderVisual(
      _pointer,
      levelsPointer,
      length,
    );

    final slice = icu4XBindings.reorderedIndexMap.asSlice(reorderedIndexMap);

    final List<int> resultList;
    if (ffi.sizeOf<ffi.Size>() == ffi.sizeOf<ffi.Uint64>()) {
      resultList = slice.data.cast<ffi.Uint64>().asTypedList(
            slice.len,
            finalizer: icu4XBindings.reorderedIndexMap.destroyPointer.cast(),
            token: reorderedIndexMap.cast(),
          );
    } else {
      resultList = slice.data.cast<ffi.Uint32>().asTypedList(
            slice.len,
            finalizer: icu4XBindings.reorderedIndexMap.destroyPointer.cast(),
            token: reorderedIndexMap.cast(),
          );
    }

    return resultList;
  }
}
