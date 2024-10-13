import 'dart:typed_data';

const int _oneByteLimit = 0x7f; // 7 bits
const int _twoByteLimit = 0x7ff; // 11 bits
const int _surrogateTagMask = 0xFC00;
const int _surrogateValueMask = 0x3FF;
const int _leadSurrogateMin = 0xD800;

@pragma('vm:unsafe:no-interrupts')
Uint8List utf16ToUtf8(String str) {
  Uint8List buffer = Uint8List(str.length * 3);
  int offset = 0;
  for (var stringIndex = 0; stringIndex < str.length; stringIndex++) {
    final codeUnit = str.codeUnitAt(stringIndex);
    // ASCII has the same representation in UTF-8 and UTF-16.
    if (codeUnit <= _oneByteLimit) {
      buffer[offset++] = codeUnit;
    } else if ((codeUnit & _surrogateTagMask) == _leadSurrogateMin) {
      // combine surrogate pair
      final nextCodeUnit = str.codeUnitAt(++stringIndex);
      final rune = 0x10000 + ((codeUnit & _surrogateValueMask) << 10) |
          (nextCodeUnit & _surrogateValueMask);
      // If the rune is encoded with 2 code-units then it must be encoded
      // with 4 bytes in UTF-8.
      buffer[offset++] = 0xF0 | (rune >> 18);
      buffer[offset++] = 0x80 | ((rune >> 12) & 0x3f);
      buffer[offset++] = 0x80 | ((rune >> 6) & 0x3f);
      buffer[offset++] = 0x80 | (rune & 0x3f);
    } else if (codeUnit <= _twoByteLimit) {
      buffer[offset++] = 0xC0 | (codeUnit >> 6);
      buffer[offset++] = 0x80 | (codeUnit & 0x3f);
    } else {
      buffer[offset++] = 0xE0 | (codeUnit >> 12);
      buffer[offset++] = 0x80 | ((codeUnit >> 6) & 0x3f);
      buffer[offset++] = 0x80 | (codeUnit & 0x3f);
    }
  }

  return buffer.sublist(0, offset);
}
