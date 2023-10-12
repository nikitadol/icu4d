import 'dart:convert';
import 'dart:typed_data';

// ignore: depend_on_referenced_packages
import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:collection/collection.dart';

final test1 = 'test string for encoding ' * 40;
final test2 =
    'тестовая строка для кодирования🤯🙋‍♀️🙅‍♂️👩‍👩‍👦‍👦👩‍👩‍👧‍👧 ' * 40;

class MyBenchmark extends BenchmarkBase {
  MyBenchmark(
    String tag,
    this.encodeString,
    this.testString,
  )   : list = Uint8List(testString.length * 3),
        super(tag);

  final String testString;
  final void Function(String str, Uint8List buffer) encodeString;

  static void main(
    String tag,
    void Function(String str, Uint8List buffer) encodeString,
  ) {
    MyBenchmark('$tag-1', encodeString, test1).report();
    MyBenchmark('$tag-2', encodeString, test2).report();
  }

  final Uint8List list;

  @override
  void run() {
    encodeString(testString, list);
  }
}

Future<void> main() async {
  const tests = [
    ('native', encodeStringNative),
    // ('suggested', encodeString),
    // ('suggested-optimized', encodeString1),
    // ('msgpack-port', encodeString2),
    // ('msgpack-port-optimized', encodeString3),
    // ('native-extracted', encodeString4),
    ('msgpack-port-optimized2', encodeString5),
    ('msgpack-port-optimized3', encodeString6),
  ];

  {
    final encoded = [
      for (final test in tests)
        if (Uint8List(test2.length * 3) case final list
            when () {
              test.$2(test2, list);
              return true;
            }())
          list,
    ];

    const equality = DeepCollectionEquality();

    for (final item in encoded.indexed) {
      print(item);
      print(utf8.decode(item.$2));
      if (!equality.equals(item.$2, encoded.first)) {
        throw StateError('Should be equals ${item.$1}');
      }
    }
  }

  for (final test in tests) {
    MyBenchmark.main(test.$1, test.$2);
    await Future<void>.delayed(Duration(milliseconds: 300));
  }
}

int countUtf8(String str) {
  final length = str.length;

  int count = 0;
  if (length == 0) return 0;

  for (int i = 0; i < length; i++) {
    count += switch (str.codeUnitAt(i)) {
      < 0x80 => 1,
      < 0x800 => 2,
      < 0x10000 => 3,
      _ => 4,
    };
  }

  return count;
}

void encodeStringNative(String str, Uint8List buffer) {
  buffer.setAll(0, utf8.encode(str));
}

const int __oneByteLimit = 0x7f; // 7 bits
const int __twoByteLimit = 0x7ff; // 11 bits
const int __surrogateTagMask = 0xFC00;
const int __surrogateValueMask = 0x3FF;
const int __leadSurrogateMin = 0xD800;

/// Encodes a Dart String to UTF8, writes it at [offset] into [buffer] and
/// returns the number of written bytes.
///
/// The buffer needs to have a capacity of at least `offset + str.length * 3`.
void encodeString(String str, Uint8List buffer) {
  int offset = 0;
  for (var stringIndex = 0; stringIndex < str.length; stringIndex++) {
    final codeUnit = str.codeUnitAt(stringIndex);
    // ASCII has the same representation in UTF-8 and UTF-16.
    if (codeUnit <= __oneByteLimit) {
      buffer[offset++] = codeUnit;
    } else if ((codeUnit & __surrogateTagMask) == __leadSurrogateMin) {
      // combine surrogate pair
      final nextCodeUnit = str.codeUnitAt(++stringIndex);
      final rune = 0x10000 + ((codeUnit & __surrogateValueMask) << 10) |
          (nextCodeUnit & __surrogateValueMask);
      // If the rune is encoded with 2 code-units then it must be encoded
      // with 4 bytes in UTF-8.
      buffer[offset++] = 0xF0 | (rune >> 18);
      buffer[offset++] = 0x80 | ((rune >> 12) & 0x3f);
      buffer[offset++] = 0x80 | ((rune >> 6) & 0x3f);
      buffer[offset++] = 0x80 | (rune & 0x3f);
    } else if (codeUnit <= __twoByteLimit) {
      buffer[offset++] = 0xC0 | (codeUnit >> 6);
      buffer[offset++] = 0x80 | (codeUnit & 0x3f);
    } else {
      buffer[offset++] = 0xE0 | (codeUnit >> 12);
      buffer[offset++] = 0x80 | ((codeUnit >> 6) & 0x3f);
      buffer[offset++] = 0x80 | (codeUnit & 0x3f);
    }
  }
}

const int _oneByteLimit = 0x80;
const int _twoByteLimit = 0x800;
const int _surrogateTagMask = 0xFC00;
const int _surrogateValueMask = 0x3FF;
const int _leadSurrogateMin = 0xD800;

void encodeString1(String str, Uint8List buffer) {
  final length = str.length;

  if (length == 0) return;

  int stringIndex = 0;
  int offset = 0;

  do {
    final codeUnit = str.codeUnitAt(stringIndex);
    // ASCII has the same representation in UTF-8 and UTF-16.
    if (codeUnit < _oneByteLimit) {
      buffer[offset] = codeUnit;
      offset += 1;
    } else if ((codeUnit & _surrogateTagMask) == _leadSurrogateMin) {
      // combine surrogate pair
      final nextCodeUnit = str.codeUnitAt(++stringIndex);
      final rune = 0x10000 + ((codeUnit & _surrogateValueMask) << 10) |
          (nextCodeUnit & _surrogateValueMask);
      // If the rune is encoded with 2 code-units then it must be encoded
      // with 4 bytes in UTF-8.
      buffer[offset] = 0xF0 | (rune >> 18);
      buffer[offset + 1] = 0x80 | ((rune >> 12) & 0x3f);
      buffer[offset + 2] = 0x80 | ((rune >> 6) & 0x3f);
      buffer[offset + 3] = 0x80 | (rune & 0x3f);
      offset += 4;
    } else if (codeUnit < _twoByteLimit) {
      buffer[offset] = 0xC0 | (codeUnit >> 6);
      buffer[offset + 1] = 0x80 | (codeUnit & 0x3f);
      offset += 2;
    } else {
      buffer[offset] = 0xE0 | (codeUnit >> 12);
      buffer[offset + 1] = 0x80 | ((codeUnit >> 6) & 0x3f);
      buffer[offset + 2] = 0x80 | (codeUnit & 0x3f);
      offset += 3;
    }
    stringIndex++;
  } while (stringIndex < length);
}

void encodeString2(String str, Uint8List buffer) {
  final length = str.length;

  if (length == 0) return;

  int offset = 0;
  int index = 0;
  int u16 = 0;
  while (index < length) {
    u16 = str.codeUnitAt(index++);

    if (u16 < 0x80) {
      buffer[offset++] = u16;
    } else if (u16 < 0x800) {
      buffer[offset++] = 0xC0 | (u16 >>> 6);
      buffer[offset++] = 0x80 | (u16 & 0x3F);
    } else if (u16 < 0xD800 || u16 > 0xDFFF) {
      buffer[offset++] = 0xE0 | (u16 >>> 12);
      buffer[offset++] = 0x80 | ((u16 >>> 6) & 0x3F);
      buffer[offset++] = 0x80 | (u16 & 0x3F);
    } else {
      u16 = (((u16 - 0xD800) << 10) | (str.codeUnitAt(index++) - 0xDC00)) +
          0x10000;
      buffer[offset++] = 0xF0 | (u16 >>> 18);
      buffer[offset++] = 0x80 | ((u16 >>> 12) & 0x3F);
      buffer[offset++] = 0x80 | ((u16 >>> 6) & 0x3F);
      buffer[offset++] = 0x80 | (u16 & 0x3F);
    }
  }
}

void encodeString3(String str, Uint8List buffer) {
  final length = str.length;

  if (length == 0) return;

  int offset = 0;
  int index = 0;
  int u16 = 0;
  while (index < length) {
    u16 = str.codeUnitAt(index++);

    if (u16 < 0x80) {
      buffer[offset] = u16;
      offset += 1;
    } else if (u16 < 0x800) {
      buffer[offset] = 0xC0 | (u16 >> 6);
      buffer[offset + 1] = 0x80 | (u16 & 0x3F);
      offset += 2;
    } else if (u16 < 0xD800 || u16 > 0xDFFF) {
      buffer[offset] = 0xE0 | (u16 >> 12);
      buffer[offset + 1] = 0x80 | ((u16 >> 6) & 0x3F);
      buffer[offset + 2] = 0x80 | (u16 & 0x3F);
      offset += 3;
    } else {
      u16 = (((u16 - 0xD800) << 10) | (str.codeUnitAt(index++) - 0xDC00)) +
          0x10000;
      buffer[offset] = 0xF0 | (u16 >> 18);
      buffer[offset + 1] = 0x80 | ((u16 >> 12) & 0x3F);
      buffer[offset + 2] = 0x80 | ((u16 >> 6) & 0x3F);
      buffer[offset + 3] = 0x80 | (u16 & 0x3F);
      offset += 4;
    }
  }
}

void encodeString4(String str, Uint8List buffer) {
  final length = str.length;
  if (length == 0) return;
  int bufferIndex = 0;

  int end = length;

  if ((str.codeUnitAt(end - 1) & _SURROGATE_TAG_MASK) == _LEAD_SURROGATE_MIN) {
    end--;
  }
  int stringIndex;
  for (stringIndex = 0; stringIndex < end; stringIndex++) {
    final codeUnit = str.codeUnitAt(stringIndex);
    if (codeUnit <= _ONE_BYTE_LIMIT) {
      if (bufferIndex >= buffer.length) break;
      buffer[bufferIndex] = codeUnit;
      bufferIndex += 1;
    } else if ((codeUnit & _SURROGATE_TAG_MASK) == _LEAD_SURROGATE_MIN) {
      if (bufferIndex + 4 > buffer.length) break;
      final nextCodeUnit = str.codeUnitAt(stringIndex + 1);

      if ((nextCodeUnit & _SURROGATE_TAG_MASK) == _TAIL_SURROGATE_MIN) {
        final rune =
            0x10000 + ((codeUnit & 0x3FF) << 10) | (nextCodeUnit & 0x3FF);
        assert(rune > _THREE_BYTE_LIMIT);
        assert(rune <= _FOUR_BYTE_LIMIT);
        buffer[bufferIndex] = 0xF0 | (rune >> 18);
        buffer[bufferIndex + 1] = 0x80 | ((rune >> 12) & 0x3f);
        buffer[bufferIndex + 2] = 0x80 | ((rune >> 6) & 0x3f);
        buffer[bufferIndex + 3] = 0x80 | (rune & 0x3f);
        bufferIndex += 4;
        stringIndex++;
      } else {
        buffer[bufferIndex] = 0xEF;
        buffer[bufferIndex + 1] = 0xBF;
        buffer[bufferIndex + 2] = 0xBD;
        bufferIndex += 3;
      }
    } else if ((codeUnit & _SURROGATE_TAG_MASK) == _TAIL_SURROGATE_MIN) {
      if (bufferIndex + 3 > buffer.length) break;
      buffer[bufferIndex] = 0xEF;
      buffer[bufferIndex + 1] = 0xBF;
      buffer[bufferIndex + 2] = 0xBD;
      bufferIndex += 3;
    } else {
      var rune = codeUnit;
      if (rune <= _TWO_BYTE_LIMIT) {
        if (bufferIndex + 1 >= buffer.length) break;
        buffer[bufferIndex] = 0xC0 | (rune >> 6);
        buffer[bufferIndex + 1] = 0x80 | (rune & 0x3f);
        bufferIndex += 2;
      } else {
        assert(rune <= _THREE_BYTE_LIMIT);
        if (bufferIndex + 2 >= buffer.length) break;
        buffer[bufferIndex] = 0xE0 | (rune >> 12);
        buffer[bufferIndex + 1] = 0x80 | ((rune >> 6) & 0x3f);
        buffer[bufferIndex + 2] = 0x80 | (rune & 0x3f);
        bufferIndex += 3;
      }
    }
  }

  final endPosition = stringIndex;
  assert(endPosition >= length - 1);
  if (endPosition != length) {
    buffer[bufferIndex] = 0xEF;
    buffer[bufferIndex + 1] = 0xBF;
    buffer[bufferIndex + 2] = 0xBD;
    bufferIndex += 3;
  }
}

// UTF-8 constants.
const int _ONE_BYTE_LIMIT = 0x7f; // 7 bits
const int _TWO_BYTE_LIMIT = 0x7ff; // 11 bits
const int _THREE_BYTE_LIMIT = 0xffff; // 16 bits
const int _FOUR_BYTE_LIMIT = 0x10ffff; // 21 bits, truncated to Unicode max.

// UTF-16 constants.
const int _SURROGATE_TAG_MASK = 0xFC00;
const int _LEAD_SURROGATE_MIN = 0xD800;
const int _TAIL_SURROGATE_MIN = 0xDC00;

@pragma('vm:never-inline')
@pragma('vm:unsafe:no-interrupts')
void encodeString5(String str, Uint8List buffer) {
  final length = str.length;

  final bufferLength = buffer.length;
  if (length == 0 || bufferLength == 0) {
    return;
  }
  buffer[0] = 0;

  int offset = 0;
  int index = 0;
  int u16 = 0;
  while (index < length) {
    u16 = str.codeUnitAt(index++);

    if (u16 < 0x80) {
      buffer[offset] = u16;
      offset += 1;
    } else if (u16 < 0x800) {
      buffer[offset] = 0xC0 | (u16 >> 6);
      buffer[offset + 1] = 0x80 | (u16 & 0x3F);
      offset += 2;
    } else if (u16 < 0xD800 || u16 > 0xDFFF) {
      buffer[offset] = 0xE0 | (u16 >> 12);
      buffer[offset + 1] = 0x80 | ((u16 >> 6) & 0x3F);
      buffer[offset + 2] = 0x80 | (u16 & 0x3F);
      offset += 3;
    } else {
      u16 = (((u16 - 0xD800) << 10) | (str.codeUnitAt(index++) - 0xDC00)) +
          0x10000;
      buffer[offset] = 0xF0 | (u16 >> 18);
      buffer[offset + 1] = 0x80 | ((u16 >> 12) & 0x3F);
      buffer[offset + 2] = 0x80 | ((u16 >> 6) & 0x3F);
      buffer[offset + 3] = 0x80 | (u16 & 0x3F);
      offset += 4;
    }
  }
}

@pragma('vm:never-inline')
@pragma('vm:unsafe:no-interrupts')
void encodeString6(String str, Uint8List buffer) {
  final length = str.length;
  final bufferLength = buffer.length;

  if (length == 0 || bufferLength == 0 || length > bufferLength) {
    return;
  }

  buffer[0] = 0;

  int offset = 0;
  int index = 0;
  int u16 = 0;
  while (index < length) {
    u16 = str.codeUnitAt(index++);

    if (u16 < 0x80) {
      buffer[offset] = u16;
      offset += 1;
    } else if (u16 < 0x800) {
      buffer[offset] = 0xC0 | (u16 >> 6);
      buffer[offset + 1] = 0x80 | (u16 & 0x3F);
      offset += 2;
    } else if (u16 < 0xD800 || u16 > 0xDFFF) {
      buffer[offset] = 0xE0 | (u16 >> 12);
      buffer[offset + 1] = 0x80 | ((u16 >> 6) & 0x3F);
      buffer[offset + 2] = 0x80 | (u16 & 0x3F);
      offset += 3;
    } else {
      u16 = (((u16 - 0xD800) << 10) | (str.codeUnitAt(index++) - 0xDC00)) +
          0x10000;
      buffer[offset] = 0xF0 | (u16 >> 18);
      buffer[offset + 1] = 0x80 | ((u16 >> 12) & 0x3F);
      buffer[offset + 2] = 0x80 | ((u16 >> 6) & 0x3F);
      buffer[offset + 3] = 0x80 | (u16 & 0x3F);
      offset += 4;
    }
  }
}
