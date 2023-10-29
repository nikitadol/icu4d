import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();
  final caseMapper = CaseMapper.from(dataProvider);

  group(
    'CaseMapper',
    () {
      test(
        'lowerCase',
        () {
          final locale = Locale();

          final tests = [
            ('hEllO WorLd', locale, 'hello world'),
            ('Γειά σου Κόσμε', locale, 'γειά σου κόσμε'),
            ('नमस्ते दुनिया', locale, 'नमस्ते दुनिया'),
            ('Привет мир', locale, 'привет мир'),
            ('CONSTANTINOPLE', locale, 'constantinople'),
            ('CONSTANTINOPLE', Locale('tr'), 'constantınople'),
          ];

          for (final (source, locale, result) in tests) {
            expect(
              caseMapper.lowercase(source, locale),
              result,
              reason: source,
            );
          }
        },
      );

      test(
        'upperCase',
        () {
          final locale = Locale();

          final tests = [
            ('hEllO WorLd', locale, 'HELLO WORLD'),
            ('Γειά σου Κόσμε', locale, 'ΓΕΙΆ ΣΟΥ ΚΌΣΜΕ'),
            ('नमस्ते दुनिया', locale, 'नमस्ते दुनिया'),
            ('Привет мир', locale, 'ПРИВЕТ МИР'),
            ('istanbul', locale, 'ISTANBUL'),
            ('istanbul', Locale('tr'), 'İSTANBUL'),
            ('և Երևանի', locale, 'ԵՒ ԵՐԵՒԱՆԻ'),
            ('և Երևանի', Locale('hy'), 'ԵՎ ԵՐԵՎԱՆԻ'),
          ];

          for (final (source, locale, result) in tests) {
            expect(
              caseMapper.uppercase(source, locale),
              result,
              reason: source,
            );
          }
        },
      );

      test(
        'titlecaseSegmentWithOnlyCaseData',
        () {
          final locale = Locale();

          final List<(String, Locale, String)> deafultTests = [
            ('hEllO WorLd', locale, 'Hello world'),
            ('Γειά σου Κόσμε', locale, 'Γειά σου κόσμε'),
            ('नमस्ते दुनिया', locale, 'नमस्ते दुनिया'),
            ('Привет мир', locale, 'Привет мир'),
            ('istanbul', locale, 'Istanbul'),
            ('istanbul', Locale('tr'), 'İstanbul'),
            ('և Երևանի', locale, 'Եւ երևանի'),
            ('և Երևանի', Locale('hy'), 'Եվ երևանի'),
            ('ijkdijk', locale, 'Ijkdijk'),
            ('ijkdijk', Locale('nl'), 'IJkdijk'),
          ];

          for (final (source, locale, result) in deafultTests) {
            expect(
              caseMapper.titlecaseSegmentWithOnlyCaseData(source, locale),
              result,
              reason: source,
            );
          }
        },
      );

      test(
        'fold',
        () {
          final tests = [
            ('hEllO WorLd', 'hello world'),
            ('Γειά σου Κόσμε', 'γειά σου κόσμε'),
            ('नमस्ते दुनिया', 'नमस्ते दुनिया'),
            ('Привет мир', 'привет мир'),
          ];

          for (final (source, result) in tests) {
            expect(
              caseMapper.fold(source),
              result,
              reason: source,
            );
          }
        },
      );

      test(
        'foldTurkic',
        () {
          final tests = [
            ('hEllO WorLd', 'hello world'),
            ('Γειά σου Κόσμε', 'γειά σου κόσμε'),
            ('नमस्ते दुनिया', 'नमस्ते दुनिया'),
            ('Привет мир', 'привет мир'),
            ('İstanbul not Constantinople', 'istanbul not constantinople'),
            ('Istanbul not Constantınople', 'ıstanbul not constantınople'),
          ];

          for (final (source, result) in tests) {
            expect(
              caseMapper.foldTurkic(source),
              result,
              reason: source,
            );
          }
        },
      );
    },
  );
}
