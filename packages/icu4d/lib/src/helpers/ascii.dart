extension StringAsciiHelper on String {
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
