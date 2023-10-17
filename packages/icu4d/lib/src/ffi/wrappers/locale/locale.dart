part of icu4d_ffi;

final class Locale extends BaseLocale {
  Locale._(ffi.Pointer<ICU4XLocale> locale) : super._(locale);

  factory Locale.createUnd() {
    return Locale._(icu4XBindings.locale.createUnd());
  }

  factory Locale.fromString(String name) =>
      Locale._(BaseLocale._fromString(name));
}
