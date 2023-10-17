part of icu4d_ffi;

final class MutableLocale extends BaseLocale {
  MutableLocale._(ffi.Pointer<ICU4XLocale> locale) : super._(locale);

  factory MutableLocale.createUnd() {
    return MutableLocale._(icu4XBindings.locale.createUnd());
  }

  factory MutableLocale.fromString(String name) =>
      MutableLocale._(BaseLocale._fromString(name));
}
