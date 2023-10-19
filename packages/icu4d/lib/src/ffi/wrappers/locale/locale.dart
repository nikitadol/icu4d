part of '../../ffi.dart';

final class Locale extends BaseLocale {
  Locale._(super.locale) : super._();

  factory Locale.createUnd() {
    return Locale._(icu4XBindings.locale.createUnd());
  }

  factory Locale.fromString(String name) =>
      Locale._(BaseLocale._fromString(name));
}
