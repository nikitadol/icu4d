import 'dart:convert';

import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();
  final bidi = Bidi.from(dataProvider);

  group(
    'Bidi',
    () {
      test(
        'levelLtr',
        () {
          expect(bidi.levelLtr, 0);
        },
      );
      test(
        'levelRtl',
        () {
          expect(bidi.levelRtl, 1);
        },
      );
      test(
        'levelIsLtr',
        () {
          expect(bidi.levelIsLtr(0), true);
          expect(bidi.levelIsLtr(1), false);
        },
      );
      test(
        'levelIsRtl',
        () {
          expect(bidi.levelIsRtl(0), false);
          expect(bidi.levelIsRtl(1), true);
        },
      );
      test(
        'reorderVisual',
        () {
          expect(bidi.reorderVisual([]), const <int>[]);
          expect(
            bidi.reorderVisual([0, 0, 0, 0]),
            const <int>[0, 1, 2, 3],
          );
          expect(
            bidi.reorderVisual([0, 0, 0, 1, 1, 1, 2, 2]),
            const <int>[0, 1, 2, 6, 7, 5, 4, 3],
          );
        },
      );
    },
  );

  test(
    'BidiInfo',
    () {
      final texts = [
        ('test text', 0),
        ('тестовый текст', 0),
        ('نص الاختبار', 1),
      ];

      for (final (text, levelAtZero) in texts) {
        final info = bidi.forText(text);

        expect(info.levelAt(0), levelAtZero, reason: text);
        expect(info.size, utf8.encode(text).length);
        expect(info.paragraphCount, 1);
      }
    },
  );

  test(
    'BidiParagraph',
    () {
      const text = 'test امتحان test';
      final textBytes = utf8.encode(text);

      final info = bidi.forText(text);

      expect(info.paragraphCount, 1);

      final paragraph = info.paragraphAt(0);

      expect(paragraph.direction, BidiDirection.mixed);
      expect(paragraph.size, textBytes.length);
      expect(paragraph.rangeStart, 0);
      expect(paragraph.rangeEnd, textBytes.length);

      expect(paragraph.levelAt(0), 0);
      expect(paragraph.levelAt(6), 1);
      expect(paragraph.levelAt(20), 0);

      expect(
        () => paragraph.reorderLine(paragraph.rangeStart, paragraph.rangeEnd),
        returnsNormally,
      );
    },
  );
}
