import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();
  final composition = CanonicalDecomposition.from(dataProvider);

  group(
    'CanonicalDecomposition',
    () {
      test(
        'decompose',
        () {
          const items = [
            ('e', ('e', null)),
            ('ệ', ('ẹ', '\u{0302}')),
            ('각', ('가', 'ᆨ')),
            ('\u{212B}', ('Å', null)),
            ('\u{2126}', ('Ω', null)),
            ('\u{1F71}', ('ά', null)),
          ];
          for (final (c, result) in items) {
            expect(
              composition.decompose(c.codeUnitAt(0)),
              (result.$1.codeUnitAt(0), result.$2?.codeUnitAt(0)),
              reason: c,
            );
          }
        },
      );
    },
  );
}
