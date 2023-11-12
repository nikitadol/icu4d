import 'package:icu4d/icu.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
    'Locale',
    () {
      test(
        'init',
        () {
          expect(() => Locale(), returnsNormally);
          expect(() => Locale('en'), returnsNormally);
          expect(() => Locale('en_UK'), returnsNormally);
          expect(() => Locale('en_UK@calendar=test'), returnsNormally);
        },
      );
    },
  );
}
