import 'dart:convert';
import 'dart:io';

import 'package:icu4d/icu.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

import '../helpers/collection.dart';
import '../helpers/test_setup.dart';

void main() {
  setupTest();

  final dataProvider = DataProvider.compiled();

  final testDataPath = join(
    icu4xDirPath,
    'components',
    'collator',
    'tests',
    'data',
  );

  final locale = Locale();

  group(
    'Collator',
    () {
      test(
        'implicit unihan',
        () {
          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.quaternary,
          );

          expect(collator.compare('\u{4E00}', '\u{4E00}'), 0);
          expect(collator.compare('\u{4E00}', '\u{4E01}'), -1);
          expect(collator.compare('\u{4E01}', '\u{4E00}'), 1);
          expect(collator.compare('\u{4E18}', '\u{4E42}'), -1);
          expect(collator.compare('\u{4E94}', '\u{50F6}'), -1);
        },
      );

      test(
        'currency',
        () {
          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.quaternary,
          );

          const currencies = [
            '¤',
            '¢',
            '￠',
            '\$',
            '＄',
            '﹩',
            '£',
            '￡',
            '¥',
            '￥',
            '৲',
            '৳',
            '฿',
            '៛',
            '₠',
            '₡',
            '₢',
            '₣',
            '₤',
            '₥',
            '₦',
            '₧',
            '₩',
            '￦',
            '₪',
            '₫',
            '€',
            '₭',
            '₮',
            '₯',
          ];

          for (final [lower, higher] in currencies.windows(2)) {
            expect(collator.compare(lower, higher), -1);
          }
        },
      );

      test(
        'de',
        () {
          const strings = [
            ('Größe', 'Grossist'),
            ('abc', 'a\u{0308}bc'),
            ('Töne', 'Ton'),
            ('Töne', 'Tod'),
            ('Töne', 'Tofu'),
            ('äbc', 'A\u{0308}bc'),
            ('äbc', 'a\u{0308}bc'),
            ('äbc', 'aebc'),
            ('Straße', 'Strasse'),
            ('efg', 'efg'),
            ('äbc', 'aebc'),
            ('Straße', 'Strasse'),
          ];

          const expectPrimary = [-1, 0, 1, 1, 1, 0, 0, -1, 0, 0, -1, 0];

          const expectTertiary = [-1, -1, 1, 1, 1, -1, 0, -1, 1, 0, -1, 1];

          _checkExpectationsZip(
            Collator.from(dataProvider, locale, strength: Strength.primary),
            strings,
            expectPrimary,
          );

          _checkExpectationsZip(
            Collator.from(dataProvider, locale, strength: Strength.tertiary),
            strings,
            expectTertiary,
          );
        },
      );

      test(
        'en',
        () {
          const tests = [
            ('ab', 'abc', -1),
            ('black-bird', 'blackbird', -1),
            ('black bird', 'black-bird', -1),
            ('black-bird', 'black', 1),
            ('Hello', 'hello', 1),
            ('ABC', 'ABC', 0),
            ('abc', 'ABC', -1),
            ('blackbird', 'blackbirds', -1),
            ('black-bird', 'blackbirds', -1),
            ('black-bird', 'blackbird', -1),
            ('pêche', 'péché', 1),
            ('péché', 'pécher', -1),
            ('ÄB̈C̈', 'ÄB̈C̈', 0),
            ('äbc', 'Äbc', -1),
            ('pécher', 'péche', 1),
            ('roles', 'rôle', 1),
            ('abc', 'Aácd', 1),
            ('A', 'Aácd', -1),
            ('A', 'abc', -1),
            ('ab', 'abc', -1),
            ('tcompareplain', 'TComparePlain', -1),
            ('ab', 'aBc', -1),
            ('a#b', 'a#B', -1),
            ('a#b', 'a&b', 1),
            ('abc', 'a#c', 1),
            ('Abcda', 'abcda', 1),
            ('abcda', 'Äbcda', -1),
            ('abcda', 'äbcda', -1),
            ('æbcda', 'Äbcda', 1),
            ('äbcda', 'Äbcda', -1),
            ('abc', 'ab#c', 1),
            ('abc', 'abc', 0),
            ('abc', 'ab=c', 1),
            ('abc', 'abd', -1),
            ('abc', 'äbc', -1),
            ('acHc', 'aCHc', -1),
            ('äbc', 'äbc', 0),
            ('thîs', 'thîs', 0),
            ('pêche', 'péché', 0),
            ('abc', 'aBC', 0),
            ('abc', 'abd', -1),
            ('abc', 'äbc', 0),
            ('aæc', 'aÆc', 0),
            ('abc', 'aBd', -1),
            ('abc', 'äbc', -1),
            ('aæc', 'aÆc', 0),
            ('abc', 'aBd', -1),
            ('abc', 'äbc', -1),
            ('péché', 'pêche', -1),
          ];

          _checkExpectations(
            Collator.from(dataProvider, locale, strength: Strength.tertiary),
            tests.take(37),
          );

          _checkExpectations(
            Collator.from(dataProvider, locale, strength: Strength.primary),
            tests.skip(37).take(43 - 37),
          );

          _checkExpectations(
            Collator.from(dataProvider, locale, strength: Strength.secondary),
            tests.skip(43),
          );
        },
      );

      test(
        'en bugs',
        () {
          const bugs = ['a', 'A', 'e', 'E', 'é', 'è', 'ê', 'ë', 'ea', 'x'];

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.tertiary,
          );

          final iterator = bugs.iterator;
          iterator.moveNext();

          final left = iterator.current;

          while (iterator.moveNext()) {
            expect(collator.compare(left, iterator.current), -1);
          }
        },
      );

      test(
        'ja tertiary',
        () {
          const left = [
            ('ﾞ', 'ﾟ', -1),
            ('あ', 'ア', 0),
            ('ア', 'ああ', -1),
            ('ああ', 'アー', 1),
            ('アー', 'アート', -1),
            ('アート', 'ああと', -1),
          ];

          final locale = Locale('ja');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.tertiary,
            caseLevel: CaseLevel.on,
          );

          _checkExpectations(collator, left);
        },
      );

      test(
        'ja base',
        () {
          const strings = ['カ', 'カキ', 'キ', 'キキ'];

          final locale = Locale('ja');
          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.primary,
          );

          for (final [left, right] in strings.windows(2)) {
            expect(collator.compare(left, right), -1);
          }
        },
      );

      test(
        'ja plain dakuten handakuten',
        () {
          const strings = ['ハカ', 'バカ', 'ハキ', 'バキ'];

          final locale = Locale('ja');
          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.secondary,
          );

          for (final [left, right] in strings.windows(2)) {
            expect(collator.compare(left, right), -1);
          }
        },
      );

      test(
        'ja small large',
        () {
          const strings = ['ッハ', 'ツハ', 'ッバ', 'ツバ'];

          final locale = Locale('ja');
          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.tertiary,
            caseLevel: CaseLevel.on,
          );

          for (final [left, right] in strings.windows(2)) {
            expect(collator.compare(left, right), -1);
          }
        },
      );

      test(
        'ja hiragana katakana',
        () {
          const strings = ['あッ', 'アッ', 'あツ', 'アツ'];

          final locale = Locale('ja');
          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.quaternary,
            caseLevel: CaseLevel.on,
          );

          for (final [left, right] in strings.windows(2)) {
            expect(collator.compare(left, right), -1);
          }
        },
      );

      test(
        'ja chooon kigoo',
        () {
          const strings = [
            'カーあ',
            'カーア',
            'カイあ',
            'カイア',
            'キーあ',
            'キーア',
            'キイあ',
            'キイア',
          ];

          final locale = Locale('ja');
          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.quaternary,
            caseLevel: CaseLevel.on,
          );

          for (final [left, right] in strings.windows(2)) {
            expect(collator.compare(left, right), -1);
          }
        },
      );

      test(
        'region fallback',
        () {
          final locale = Locale('fi-u-co-standard');
          final collator = Collator.from(dataProvider, locale);

          expect(collator.compare('ä', 'z'), 1);
        },
        skip: true,
      );

      test(
        'reordering',
        () {
          {
            final collator = Collator.from(dataProvider, locale);

            expect(collator.compare('অ', 'a'), 1);
            expect(collator.compare('ऄ', 'a'), 1);
            expect(collator.compare('অ', 'ऄ'), 1);
          }

          {
            final collator = Collator.from(dataProvider, Locale('bn'));

            expect(collator.compare('অ', 'a'), -1);
            expect(collator.compare('ऄ', 'a'), -1);
            expect(collator.compare('অ', 'ऄ'), -1);
          }
        },
      );

      test(
        'zh',
        () {
          {
            final collator = Collator.from(dataProvider, locale);

            expect(collator.compare('艾', 'a'), 1);
            expect(collator.compare('佰', 'a'), 1);
            expect(collator.compare('ㄅ', 'a'), 1);
            expect(collator.compare('ㄅ', 'ж'), 1);
            expect(collator.compare('艾', '佰'), 1);
            expect(collator.compare('艾', 'ㄅ'), 1);
            expect(collator.compare('佰', 'ㄅ'), 1);
            expect(collator.compare('不', '把'), -1);
          }

          {
            final collator = Collator.from(dataProvider, Locale('zh'));
            expect(collator.compare('艾', 'a'), -1);
            expect(collator.compare('佰', 'a'), -1);
            expect(collator.compare('ㄅ', 'a'), 1);
            expect(collator.compare('ㄅ', 'ж'), 1);
            expect(collator.compare('艾', '佰'), -1);
            expect(collator.compare('艾', 'ㄅ'), -1);
            expect(collator.compare('佰', 'ㄅ'), -1);
            expect(collator.compare('不', '把'), 1);
          }

          {
            final collator = Collator.from(
              dataProvider,
              Locale('zh-u-co-pinyin'),
            );
            expect(collator.compare('艾', 'a'), -1);
            expect(collator.compare('佰', 'a'), -1);
            expect(collator.compare('ㄅ', 'a'), 1);
            expect(collator.compare('ㄅ', 'ж'), 1);
            expect(collator.compare('艾', '佰'), -1);
            expect(collator.compare('艾', 'ㄅ'), -1);
            expect(collator.compare('佰', 'ㄅ'), -1);
            expect(collator.compare('不', '把'), 1);
          }

          {
            final collator = Collator.from(
              dataProvider,
              Locale('zh-u-co-gb2312'),
            );
            expect(collator.compare('艾', 'a'), 1);
            expect(collator.compare('佰', 'a'), 1);
            expect(collator.compare('ㄅ', 'a'), 1);
            expect(collator.compare('ㄅ', 'ж'), 1);
            expect(collator.compare('艾', '佰'), -1);
            expect(collator.compare('艾', 'ㄅ'), -1);
            expect(collator.compare('佰', 'ㄅ'), -1);
            expect(collator.compare('不', '把'), 1);
          }

          {
            final collator = Collator.from(
              dataProvider,
              Locale('zh-u-co-stroke'),
            );
            expect(collator.compare('艾', 'a'), -1);
            expect(collator.compare('佰', 'a'), -1);
            expect(collator.compare('ㄅ', 'a'), -1);
            expect(collator.compare('ㄅ', 'ж'), -1);
            expect(collator.compare('艾', '佰'), -1);
            expect(collator.compare('艾', 'ㄅ'), -1);
            expect(collator.compare('佰', 'ㄅ'), -1);
            expect(collator.compare('不', '把'), -1);
          }

          {
            final collator = Collator.from(
              dataProvider,
              Locale('zh-u-co-zhuyin'),
            );
            expect(collator.compare('艾', 'a'), -1);
            expect(collator.compare('佰', 'a'), -1);
            expect(collator.compare('ㄅ', 'a'), -1);
            expect(collator.compare('ㄅ', 'ж'), -1);
            expect(collator.compare('艾', '佰'), 1);
            expect(collator.compare('艾', 'ㄅ'), -1);
            expect(collator.compare('佰', 'ㄅ'), -1);
            expect(collator.compare('不', '把'), 1);
          }

          {
            final collator = Collator.from(
              dataProvider,
              Locale('zh-u-co-unihan'),
            );
            expect(collator.compare('艾', 'a'), -1);
            expect(collator.compare('佰', 'a'), -1);
            expect(collator.compare('ㄅ', 'a'), -1);
            expect(collator.compare('ㄅ', 'ж'), -1);
            expect(collator.compare('艾', '佰'), 1);
            expect(collator.compare('艾', 'ㄅ'), -1);
            expect(collator.compare('佰', 'ㄅ'), -1);
            expect(collator.compare('不', '把'), -1);
          }

          {
            final collator = Collator.from(
              dataProvider,
              Locale('zh-u-co-big5han'),
            );
            expect(collator.compare('艾', 'a'), 1);
            expect(collator.compare('佰', 'a'), 1);
            expect(collator.compare('ㄅ', 'a'), 1);
            expect(collator.compare('ㄅ', 'ж'), -1);
            expect(collator.compare('艾', '佰'), -1);
            expect(collator.compare('艾', 'ㄅ'), -1);
            expect(collator.compare('佰', 'ㄅ'), -1);
            expect(collator.compare('不', '把'), -1);
          }
        },
        skip: true,
      );

      test(
        'es tertiary',
        () {
          const tests = [
            ('alias', 'allias', -1),
            ('Elliot', 'Emiot', -1),
            ('Hello', 'hellO', 1),
            ('acHc', 'aCHc', -1),
            ('acc', 'aCHc', -1),
          ];

          final locale = Locale('es');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.tertiary,
          );

          _checkExpectations(collator, tests);
        },
      );

      test(
        'es primary',
        () {
          const tests = [
            ('alias', 'allias', -1),
            ('acHc', 'aCHc', 0),
            ('acc', 'aCHc', -1),
            ('Hello', 'hellO', 0),
          ];

          final locale = Locale('es');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.primary,
          );

          _checkExpectations(collator, tests);
        },
      );

      test(
        'es secondary',
        () {
          final locale = Locale('es');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.secondary,
          );

          expect(collator.compare('ϔ', 'Ϋ'), 0);
        },
      );

      test(
        'th dictionary',
        () {
          final locale = Locale('th');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.secondary,
          );

          final lines = const LineSplitter().convert(
            File(join(testDataPath, 'riwords.txt')).readAsStringSync(),
          );

          for (final [left, right]
              in lines.skipWhile((value) => value.startsWith('#')).windows(2)) {
            expect(collator.compare(left, right), -1);
          }
        },
      );

      test(
        'tr reordering',
        () {
          const tests = [
            (
              '\u{0E41}c\u{0301}',
              '\u{0E41}\u{0107}',
              0,
            ),
            (
              '\u{0E41}\u{1D15F}',
              '\u{0E41}\u{1D158}\u{1D165}',
              0,
            ),
            (
              '\u{0E41}\u{2F802}',
              '\u{0E41}\u{4E41}',
              0,
            ),
          ];

          final locale = Locale('tr');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.secondary,
          );

          _checkExpectations(collator, tests);
        },
      );

      test(
        'tr tertiary',
        () {
          const tests = [
            ('ş', 'ü', -1),
            ('vät', 'vbt', -1),
            ('old', 'Öay', -1),
            ('üoid', 'void', -1),
            ('hĞalt', 'halt', 1),
            ('stresŞ', 'ŞtreŞs', -1),
            ('voıd', 'void', -1),
            ('idea', 'Idea', 1),
          ];

          final locale = Locale('tr');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.tertiary,
          );

          _checkExpectations(collator, tests);
        },
      );

      test(
        'tr primary',
        () {
          const tests = [
            ('üoid', 'void', -1),
            ('voıd', 'void', -1),
            ('idea', 'Idea', 1),
          ];

          final locale = Locale('tr');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.tertiary,
          );

          _checkExpectations(collator, tests);
        },
      );

      test(
        'lt tertiary',
        () {
          const tests = [
            ('a\u{0307}\u{0300}a', 'a\u{0300}a', 0),
            ('a\u{0307}\u{0301}a', 'a\u{0301}a', 0),
            ('a\u{0307}\u{0302}a', 'a\u{0302}a', 1),
            ('a\u{0307}\u{0303}a', 'a\u{0303}a', 0),
            ('ž', 'z\u{033F}', 1),
          ];

          final locale = Locale('lt');

          final collator = Collator.from(
            dataProvider,
            locale,
            strength: Strength.tertiary,
          );

          _checkExpectations(collator, tests);
        },
        skip: true,
      );
    },
  );
}

void _checkExpectations(
  Collator collator,
  Iterable<(String, String, int)> items,
) {
  for (final (left, right, expectation) in items) {
    expect(
      collator.compare(left, right),
      expectation,
      reason: '`$left` `$right`',
    );
  }
}

void _checkExpectationsZip(
  Collator collator,
  Iterable<(String, String)> items,
  Iterable<int> expectations,
) {
  final itemsIter = items.iterator;
  final expectIter = expectations.iterator;

  while (itemsIter.moveNext() && expectIter.moveNext()) {
    final (left, right) = itemsIter.current;

    expect(
      collator.compare(left, right),
      expectIter.current,
      reason: '`$left` `$right`',
    );
  }
}
