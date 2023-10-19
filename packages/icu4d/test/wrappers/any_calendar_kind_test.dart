import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  test(
    'any calendar kind',
    () {
      expect(AnyCalendarKind.islamicUmmAlQura.bcp47, 'islamic-umalqura');
      expect(AnyCalendarKind.iso.bcp47, 'iso');
      expect(AnyCalendarKind.forBcp47('iso'), AnyCalendarKind.iso);
      expect(AnyCalendarKind.forBcp47('iso1'), null);
      expect(AnyCalendarKind.forLocale(Locale.fromString('en')), null);
      expect(
        AnyCalendarKind.forLocale(Locale.fromString('en-u-ca-japanese')),
        AnyCalendarKind.japanese,
      );
    },
  );
}
