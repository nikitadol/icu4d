import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();
  final composition = CanonicalComposition.from(dataProvider);

  group(
    'CanonicalComposition',
    () {
      test(
        'get',
        () {
          const items = [
            ('a', 'b', null),
            ('a', '\u{0308}', 'ä'),
            ('ẹ', '\u{0302}', 'ệ'),
            ('𝅗', '𝅥', null),
            ('ে', 'া', 'ো'),
            ('ᄀ', 'ᅡ', '가'),
            ('가', 'ᆨ', '각'),
          ];
          for (final (starter, second, result) in items) {
            expect(
              composition.compose(starter.codeUnitAt(0), second.codeUnitAt(0)),
              result?.codeUnitAt(0),
            );
          }
        },
      );
    },
  );
}
