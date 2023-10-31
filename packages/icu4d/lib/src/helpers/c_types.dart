extension IntCTypeHelper on int {
  bool get isU8 => this >= 0 && this <= 0xFF;

  bool get isU16 => this >= 0 && this <= 0xFFFF;

  bool get isU32 => this >= 0 && this <= 0xffffffff;

  bool get isI32 => this >= -0x80000000 && this <= 0x7fffffff;
}

extension StringCTypeHelper on String {
  bool get isAscii {
    final strLength = length;

    for (int i = 0; i < strLength; i++) {
      if (codeUnitAt(i) < 0x80) {
        continue;
      }

      return false;
    }

    return true;
  }
}
