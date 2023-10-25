import 'package:icu4d/icu.dart';
import 'package:test/test.dart';

import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();
  final titlecaseMapper = TitlecaseMapper.from(dataProvider);

  group(
    'TitlecaseMapper',
    () {
      test(
        'titlecaseSegment',
        () {
          final locale = Locale.createUnd();

          final List<(String, Locale, String)> deafultTests = [
            ('hEllO WorLd', locale, 'Hello world'),
            ('Γειά σου Κόσμε', locale, 'Γειά σου κόσμε'),
            ('नमस्ते दुनिया', locale, 'नमस्ते दुनिया'),
            ('Привет мир', locale, 'Привет мир'),
            ('istanbul', locale, 'Istanbul'),
            ('istanbul', Locale.fromString('tr'), 'İstanbul'),
            ('և Երևանի', locale, 'Եւ երևանի'),
            ('և Երևանի', Locale.fromString('hy'), 'Եվ երևանի'),
            ('ijkdijk', locale, 'Ijkdijk'),
            ('ijkdijk', Locale.fromString('nl'), 'IJkdijk'),
          ];

          for (final (source, locale, result) in deafultTests) {
            expect(
              titlecaseMapper.titlecaseSegment(source, locale),
              result,
              reason: source,
            );
          }

          final List<(String, LeadingAdjustment, TrailingCase, String)>
              optionsTest = [
            (
              'spOngeBoB',
              LeadingAdjustment.auto,
              TrailingCase.lower,
              'Spongebob'
            ),
            (
              'spOngeBoB',
              LeadingAdjustment.auto,
              TrailingCase.unchanged,
              'SpOngeBoB'
            ),
            ('«hello»', LeadingAdjustment.auto, TrailingCase.lower, '«Hello»'),
            (
              '«hello»',
              LeadingAdjustment.toCased,
              TrailingCase.lower,
              '«Hello»'
            ),
            ('«hello»', LeadingAdjustment.none, TrailingCase.lower, '«hello»'),
            ('丰(abc)', LeadingAdjustment.auto, TrailingCase.lower, '丰(abc)'),
            ('丰(abc)', LeadingAdjustment.toCased, TrailingCase.lower, '丰(Abc)'),
            ('丰(abc)', LeadingAdjustment.none, TrailingCase.lower, '丰(abc)'),
            ('49ers', LeadingAdjustment.auto, TrailingCase.lower, '49ers'),
            ('49ers', LeadingAdjustment.toCased, TrailingCase.lower, '49Ers'),
            ('49ers', LeadingAdjustment.none, TrailingCase.lower, '49ers'),
          ];

          for (final (source, leadingAdjustment, trailingCase, result)
              in optionsTest) {
            expect(
              titlecaseMapper.titlecaseSegment(
                source,
                locale,
                leadingAdjustment: leadingAdjustment,
                trailingCase: trailingCase,
              ),
              result,
              reason: '$source $leadingAdjustment $trailingCase',
            );
          }
        },
      );
    },
  );
}
