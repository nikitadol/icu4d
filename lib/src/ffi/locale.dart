part of icu4d_ffi;

class Locale implements ffi.Finalizable {
  static const undTag = 'und';

  Locale._();

  factory Locale.createUnd() {
    return Locale._();
  }

  factory Locale.fromString(String name) {
    try {
      return Locale._();
    } finally {}
  }

  String get basename {
    return '';
  }

  String get language {
    return '';
  }

  String get region {
    return '';
  }

  String get script {
    return '';
  }

  String getUnicodeExtensionBy(String key) {
    return '';
  }

  @override
  String toString() {
    return '';
  }
}
