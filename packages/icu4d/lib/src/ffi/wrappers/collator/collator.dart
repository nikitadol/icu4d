part of '../../ffi.dart';

final class Collator implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.collator.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XCollator> _pointer;

  Collator._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory Collator.from(
    DataProvider dataProvider,
    BaseLocale locale, {
    Strength strength = Strength.auto,
    AlternateHandling alternateHandling = AlternateHandling.auto,
    CaseFirst caseFirst = CaseFirst.auto,
    MaxVariable maxVariable = MaxVariable.auto,
    CaseLevel caseLevel = CaseLevel.auto,
    Numeric numeric = Numeric.auto,
    BackwardSecondLevel backwardSecondLevel = BackwardSecondLevel.auto,
  }) {
    final rawOptions = _allocator.allocate<ICU4XCollatorOptionsV1>(
      ffi.sizeOf<ICU4XCollatorOptionsV1>(),
      alignment: 4,
    );

    final options = rawOptions.ref;

    options
      ..strength = strength._icu4xValue
      ..alternate_handling = alternateHandling._icu4xValue
      ..case_first = caseFirst._icu4xValue
      ..max_variable = maxVariable._icu4xValue
      ..case_level = caseLevel._icu4xValue
      ..numeric = numeric._icu4xValue
      ..backward_second_level = backwardSecondLevel._icu4xValue;

    final res = _bindings.collator.createV1(
      dataProvider._pointer,
      locale._pointer,
      options,
    );

    _allocator.free(rawOptions);

    if (res.is_ok) {
      return Collator._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  int compare(String left, String right) {
    final leftPointer = _StringPointer.toUtf16(left);
    final rightPointer = _StringPointer.toUtf16(right);

    final res = _bindings.collator.compareUtf16(
      _pointer,
      leftPointer.pointer,
      leftPointer.size,
      rightPointer.pointer,
      rightPointer.size,
    );

    leftPointer.free();
    rightPointer.free();

    return res;
  }
}
