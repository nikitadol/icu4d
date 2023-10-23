import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();
  final map = CanonicalCombiningClassMap.from(dataProvider);

  group(
    'CanonicalCombiningClassMap',
    () {
      test(
        'get',
        () {
          expect(map.get('a'.codeUnitAt(0)), 0);
          expect(map.get(0x0301), 230);
        },
      );
    },
  );
}
