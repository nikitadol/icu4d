part of '../../ffi.dart';

final class TitlecaseMapper implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    icu4XBindings.titlecaseMapper.destroyPointer.cast(),
  );

  final ffi.Pointer<ICU4XTitlecaseMapper> _pointer;

  TitlecaseMapper._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory TitlecaseMapper.from(DataProvider dataProvider) {
    final res = icu4XBindings.titlecaseMapper.create(
      dataProvider._pointer,
    );

    if (res.is_ok) {
      return TitlecaseMapper._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  String titlecaseSegment(
    String str,
    BaseLocale locale, {
    LeadingAdjustment leadingAdjustment = LeadingAdjustment.toCased,
    TrailingCase trailingCase = TrailingCase.lower,
  }) {
    return _titlecaseSegment(
      str,
      locale,
      leadingAdjustment,
      trailingCase,
      _pointer,
      icu4XBindings.titlecaseMapper.titlecaseSegmentV1,
    );
  }

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static String _titlecaseSegment<T extends ffi.NativeType>(
    String str,
    BaseLocale locale,
    LeadingAdjustment leadingAdjustment,
    TrailingCase trailingCase,
    ffi.Pointer<T> pointer,
    ResultVoidOrICU4XError Function(
      ffi.Pointer<T>,
      ffi.Pointer<ffi.Uint8>,
      int,
      ffi.Pointer<ICU4XLocale>,
      ICU4XTitlecaseOptionsV1,
      ffi.Pointer<DiplomatWriteable>,
    ) func,
  ) {
    if (str.isEmpty) {
      return '';
    }

    final strPointer = StringPointer.toUtf8(str);
    final writeable = Writeable(0);

    final options = icu4XBindings.titlecaseOptionsV1.defaultOptions();

    options
      ..leading_adjustment = leadingAdjustment._icu4xValue
      ..trailing_case = trailingCase._icu4xValue;

    final res = func(
      pointer,
      strPointer.pointer,
      strPointer.size,
      locale._pointer,
      options,
      writeable.pointer,
    );

    strPointer.free();

    if (res.is_ok) {
      final resStr = writeable.fromUtf8AsString;

      writeable.free();

      return resStr;
    }

    writeable.free();

    throw FFIError(res.err);
  }
}
