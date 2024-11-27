import 'dart:io';

import 'package:bench/utf16_to_utf8/dart_native.dart' as dart_native;
import 'package:bench/utf16_to_utf8/other.dart' as other;
import 'package:bench/utf16_to_utf8/other.dart'
    as other_pragma_no_bounds_checks;
import 'package:bench/utf16_to_utf8/other.dart' as other_pragma_no_interrupts;
import 'package:bench/utf16_to_utf8/other_all_pragmas.dart'
    as other_all_pragmas;
import 'package:benchmark_runner/benchmark_runner.dart';
import 'package:path/path.dart';

void main() {
  for (final entity in Directory('benchmark/data').listSync()) {
    if (entity is! File) {
      throw StateError('$entity');
    }

    if (extension(entity.path) != '.txt') {
      continue;
    }

    final content = entity.readAsStringSync();

    group(
      basenameWithoutExtension(entity.path),
      () {
        benchmark(
          'dart native',
          () => dart_native.utf16ToUtf8(content),
        );

        benchmark(
          'other',
          () => other.utf16ToUtf8(content),
        );

        benchmark(
          'other pragma vm:unsafe:no-interrupts',
          () => other_pragma_no_interrupts.utf16ToUtf8(content),
        );

        benchmark(
          'other pragma vm:unsafe:no-bounds-checks',
          () => other_pragma_no_bounds_checks.utf16ToUtf8(content),
        );

        benchmark(
          'other all pragmas',
          () => other_all_pragmas.utf16ToUtf8(content),
        );
      },
    );
  }
}
