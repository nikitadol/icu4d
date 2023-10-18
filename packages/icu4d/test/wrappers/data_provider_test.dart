import 'package:icu4d/icu.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  group(
    'data provider',
    () {
      test(
        'compiled',
        () {
          expect(() => DataProvider.compiled(), returnsNormally);
        },
      );

      test(
        'empty',
        () {
          expect(() => DataProvider.empty(), returnsNormally);
        },
      );

      test(
        'from path',
        () {
          const paths = [
            // 'tests/data/json',
            // 'tests/data/bincode',
            'tests/data/postcard',
          ];

          final fsProviderDirPath = join(icu4xDirPath, 'provider', 'fs');

          for (final path in paths) {
            expect(
              () => DataProvider.fromPath(join(fsProviderDirPath, path)),
              returnsNormally,
              reason: path,
            );
          }
        },
      );
    },
  );
}
