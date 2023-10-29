part of '../../ffi.dart';

final class CaseMapper implements ffi.Finalizable {
  static final _finalizer = ffi.NativeFinalizer(
    _bindings.caseMapper.destroyPointer.cast(),
  );
  final ffi.Pointer<ICU4XCaseMapper> _pointer;

  CaseMapper._(this._pointer) {
    _finalizer.attach(this, _pointer.cast());
  }

  factory CaseMapper.from(DataProvider dataProvider) {
    final res = _bindings.caseMapper.create(dataProvider._pointer);

    if (res.is_ok) {
      return CaseMapper._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }

  String lowercase(String str, BaseLocale locale) {
    return _lowercaseOrUpper(
      _pointer,
      str,
      locale,
      _bindings.caseMapper.lowercase,
    );
  }

  String uppercase(String str, BaseLocale locale) {
    return _lowercaseOrUpper(
      _pointer,
      str,
      locale,
      _bindings.caseMapper.uppercase,
    );
  }

  String titlecaseSegmentWithOnlyCaseData(
    String str,
    BaseLocale locale, {
    LeadingAdjustment leadingAdjustment = LeadingAdjustment.toCased,
    TrailingCase trailingCase = TrailingCase.lower,
  }) {
    assert(
      leadingAdjustment != LeadingAdjustment.auto,
      'Need use TitlecaseMapper',
    );

    return TitlecaseMapper._titlecaseSegment(
      str,
      locale,
      leadingAdjustment,
      trailingCase,
      _pointer,
      _bindings.caseMapper.titlecaseSegmentWithOnlyCaseDataV1,
    );
  }

  String fold(String str) {
    return _fold(
      _pointer,
      str,
      _bindings.caseMapper.fold,
    );
  }

  String foldTurkic(String str) {
    return _fold(
      _pointer,
      str,
      _bindings.caseMapper.foldTurkic,
    );
  }

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static String _lowercaseOrUpper(
    ffi.Pointer<ICU4XCaseMapper> mapperPointer,
    String str,
    BaseLocale locale,
    ResultVoidOrICU4XError Function(
      ffi.Pointer<ICU4XCaseMapper>,
      ffi.Pointer<ffi.Uint8>,
      int,
      ffi.Pointer<ICU4XLocale>,
      ffi.Pointer<DiplomatWriteable>,
    ) func,
  ) {
    if (str.isEmpty) {
      return '';
    }

    final strPointer = _StringPointer.toUtf8(str);
    final writeable = Writeable(0);

    final res = func(
      mapperPointer,
      strPointer.pointer,
      strPointer.size,
      locale._pointer,
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

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static String _fold(
    ffi.Pointer<ICU4XCaseMapper> mapperPointer,
    String str,
    ResultVoidOrICU4XError Function(
      ffi.Pointer<ICU4XCaseMapper>,
      ffi.Pointer<ffi.Uint8>,
      int,
      ffi.Pointer<DiplomatWriteable>,
    ) func,
  ) {
    if (str.isEmpty) {
      return '';
    }

    final strPointer = _StringPointer.toUtf8(str);
    final writeable = Writeable(0);

    final res = func(
      mapperPointer,
      strPointer.pointer,
      strPointer.size,
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
