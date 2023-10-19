import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();

  group(
    'Bcp47ToIanaMapper',
    () {
      test(
        'from',
        () {
          expect(() => Bcp47ToIanaMapper.from(dataProvider), returnsNormally);
        },
      );

      test(
        'get',
        () {
          final mapper = Bcp47ToIanaMapper.from(dataProvider);

          expect(mapper.get('aumel'), 'Australia/Victoria');
          expect(mapper.get('inccu'), 'Asia/Kolkata');
        },
      );
    },
  );
}
