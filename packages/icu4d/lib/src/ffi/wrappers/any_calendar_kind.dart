part of '../ffi.dart';

enum AnyCalendarKind {
  iso._(ICU4XAnyCalendarKind.iso),
  gregorian._(ICU4XAnyCalendarKind.gregorian),
  buddhist._(ICU4XAnyCalendarKind.buddhist),
  japanese._(ICU4XAnyCalendarKind.japanese),
  japaneseExtended._(ICU4XAnyCalendarKind.japaneseExtended),
  ethiopian._(ICU4XAnyCalendarKind.ethiopian),
  ethiopianAmeteAlem._(ICU4XAnyCalendarKind.ethiopianAmeteAlem),
  indian._(ICU4XAnyCalendarKind.indian),
  coptic._(ICU4XAnyCalendarKind.coptic),
  dangi._(ICU4XAnyCalendarKind.dangi),
  chinese._(ICU4XAnyCalendarKind.chinese),
  hebrew._(ICU4XAnyCalendarKind.hebrew),
  islamicCivil._(ICU4XAnyCalendarKind.islamicCivil),
  islamicObservational._(ICU4XAnyCalendarKind.islamicObservational),
  islamicTabular._(ICU4XAnyCalendarKind.islamicTabular),
  islamicUmmAlQura._(ICU4XAnyCalendarKind.islamicUmmAlQura),
  persian._(ICU4XAnyCalendarKind.persian),
  roc._(ICU4XAnyCalendarKind.roc);

  const AnyCalendarKind._(this._icu4xValue);

  static AnyCalendarKind? forBcp47(String str) {
    assert(str.length >= 3);
    assert(str.isAscii);

    final strPointer = StringPointer.toAscii(str);

    final res = icu4XBindings.anyCalendarKind.getForBcp47(
      strPointer.pointer,
      strPointer.size,
    );

    strPointer.free();

    return _findFromRes(res);
  }

  static AnyCalendarKind? forLocale(Locale locale) {
    final res = icu4XBindings.anyCalendarKind.getForLocale(locale._pointer);

    return _findFromRes(res);
  }

  final int _icu4xValue;

  String get bcp47 {
    final writable = Writeable(16);

    final res =
        icu4XBindings.anyCalendarKind.bcp47(_icu4xValue, writable.pointer);

    if (res.is_ok) {
      final res = writable.fromAsciiAsString;

      writable.free();

      return res;
    }

    throw FFIError(res.err);
  }

  @pragma('vm:prefer-inline')
  @pragma('vm:always-consider-inlining')
  @pragma('dart2js:prefer-inline')
  static AnyCalendarKind? _findFromRes(ResultICU4XAnyCalendarKindOrVoid res) {
    if (res.is_ok) {
      final icu4xValue = res.ok;

      for (final value in AnyCalendarKind.values) {
        if (value._icu4xValue == icu4xValue) {
          return value;
        }
      }
    }

    return null;
  }
}
