part of '../../ffi.dart';

final class Locale extends BaseLocale {
  Locale._(super.locale) : super._();

  factory Locale([String? name]) {
    return Locale._(BaseLocale._fromString(name));
  }
}
