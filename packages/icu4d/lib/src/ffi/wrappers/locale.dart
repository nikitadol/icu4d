part of icu4d_ffi;

final class Locale extends LocaleBase {
  Locale._(ffi.Pointer<ICU4XLocale> locale) : super._(locale);

  factory Locale.createUnd() {
    return Locale._(icu4XBindings.locale.createUnd());
  }

  factory Locale.fromString(String name) {
    final namePointer = name.toAscii();

    final res = icu4XBindings.locale
        .createFromString(namePointer.bytes, namePointer.length);

    namePointer.free();

    if (res.is_ok) {
      return Locale._(res.value.ok);
    }

    throw FFIError(res.value.err);
  }
}
