part of icu4d_stub;

final class Locale {
  static const undTag = 'und';

  external Locale.fromString(String name);

  external Locale.createUnd();

  external String get basename;

  external String get language;

  external String get region;

  external String get script;

  external String getUnicodeExtensionBy(String key);

  @override
  external String toString();
}
