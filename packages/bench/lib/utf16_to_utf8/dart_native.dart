import 'dart:convert';
import 'dart:typed_data';

Uint8List utf16ToUtf8(String str) {
  return utf8.encode(str);
}
