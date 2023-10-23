import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  test(
    'any calendar kind',
    () {
      expect(CalendarKind.islamicUmmAlQura.bcp47, 'islamic-umalqura');
      expect(CalendarKind.iso.bcp47, 'iso');
      expect(CalendarKind.forBcp47('iso'), CalendarKind.iso);
      expect(CalendarKind.forBcp47('iso1'), null);
      expect(CalendarKind.forLocale(Locale.fromString('en')), null);
      expect(
        CalendarKind.forLocale(Locale.fromString('en-u-ca-japanese')),
        CalendarKind.japanese,
      );
    },
  );
}
