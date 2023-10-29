import 'dart:convert';
import 'dart:io';

import 'package:icu4d/icu.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

import '../helpers/collection.dart';
import '../helpers/test_setup.dart';

const _fixturesPath = '../../icu4x/components/locid/tests/fixtures';

Iterable<
    ({
      int index,
      Object? testInput,
      Object? testOutput,
    })> _parse(String name) sync* {
  final testsFile = File(join(_fixturesPath, name));

  final tests = jsonDecode(testsFile.readAsStringSync()) as List<Object?>;

  for (int i = 0; i < tests.length; i++) {
    final test = tests[i] as Map<String, Object?>;
    final testInput = test['input'];
    final testOutput = test['output'];

    yield (index: i, testInput: testInput, testOutput: testOutput);
  }
}

void main() {
  setupTest();

  group(
    'locale general',
    () {
      test(
        'en-US-u-ca-buddhist',
        () {
          final locale = Locale('en-US-u-ca-buddhist');

          expect(locale.basename, 'en-US');
          expect(locale.language, 'en');
          expect(locale.script, null);
          expect(locale.region, 'US');
          expect(locale.getUnicodeExtensionBy('ca'), 'buddhist');
        },
      );
      test(
        'und-u-hc-h23-kc-true',
        () {
          final locale = Locale('und-u-hc-h23-kc-true');

          expect(locale.basename, 'und');
          expect(locale.language, 'und');
          expect(locale.script, null);
          expect(locale.region, null);
          expect(locale.getUnicodeExtensionBy('ca'), null);
          expect(locale.getUnicodeExtensionBy('hc'), 'h23');
          expect(locale.getUnicodeExtensionBy('kc'), '');
        },
      );
    },
  );

  test(
    'locale parsing',
    () {
      for (final (
            :index,
            :testInput as Map<String, Object?>,
            :testOutput as Map<String, Object?>,
          ) in _parse('locale.json')) {
        if (testInput case {'identifier': String identifier}) {
          final locale = Locale(identifier);

          if (testOutput case {'language': String language}) {
            expect(locale.language, language);
          }
          if (testOutput case {'identifier': String identifier}) {
            expect(locale.toString(), identifier);
          }

          if (testOutput
              case {
                'extensions': {
                  'unicode': {
                    'keywords': Map<String, Object?> keywords,
                  }
                }
              }) {
            for (final MapEntry(:key, :value as String) in keywords.entries) {
              expect(
                locale.getUnicodeExtensionBy(key),
                value == 'true' ? '' : value,
              );
            }
          }

          // TODO(nikitadol): add when available in ffi
          // if (testOutput
          //     case {
          //       'extensions': {
          //         'unicode': {
          //           'attributes': List<Object?> attributes,
          //         }
          //       }
          //     }) {}
          //
          // if (testOutput
          //     case {
          //       'extensions': {
          //         'transform': {
          //           'tlang': String tlang,
          //         }
          //       }
          //     }) {}
          //
          // if (testOutput
          //     case {
          //       'extensions': {
          //         'private': List<Object?> private,
          //       }
          //     }) {}
          //
          // if (testOutput
          //     case {
          //       'extensions': {
          //         'transform': {
          //           'tfields': Map<String, Object?> tfields,
          //         }
          //       }
          //     }) {}
        } else {
          if (testInput case {'extensions': Object? value}) {
            // TODO(nikitadol): add when available in ffi
            if (value != null) continue;
          }

          assert(true, 'Unsupported test-$index $testInput');
        }
      }
    },
  );

  test(
    'locale identifier parsing',
    () {
      for (final (
            index: _,
            :testInput as String,
            :testOutput as Map<String, Object?>,
          ) in _parse('langid.json')) {
        final locale = Locale(testInput);

        if (testOutput case {'language': String language}) {
          expect(locale.language, language);
        }

        if (testOutput case {'script': String script}) {
          expect(locale.script, script);
        }

        if (testOutput case {'region': String region}) {
          expect(locale.region, region);
        }

        // TODO(nikitadol): add when available in ffi
        // if (testOutput
        //     case {
        //       'variants': List<Object?> variants,
        //     }) {}
      }
    },
  );

  test(
    'locale invalid extensions',
    () {
      for (final (
            :index,
            :testInput as Map<String, Object?>,
            :testOutput as Map<String, Object?>,
          ) in _parse('invalid-extensions.json')) {
        if (testInput case {'identifier': String identifier}) {
          if (testOutput case {'text': String text}) {
            expect(
              () => Locale(identifier),
              throwsA(
                allOf(
                  TypeMatcher<FFIError>(),
                  predicate<FFIError>(
                    (error) =>
                        error.code == 0 || error.toString().contains(text),
                    'should contain text `$text` if not unknown error',
                  ),
                ),
              ),
            );

            continue;
          }
        }

        assert(true, 'Unsupported test-$index $testInput');
      }
    },
  );

  test(
    'locale invalid',
    () {
      for (final (
            :index,
            :testInput,
            :testOutput as Map<String, Object?>,
          ) in _parse('invalid.json')) {
        final name = switch (testInput) {
          {'identifier': String identifier} => identifier,
          _ => testInput.toString(),
        };

        if (testOutput case {'text': String text}) {
          expect(
            () => Locale(name),
            throwsA(
              anyOf(
                allOf(
                  TypeMatcher<FFIError>(),
                  predicate<FFIError>(
                    (error) =>
                        error.code == 0 || error.toString().contains(text),
                    'should contain text `$text` if not unknown error',
                  ),
                ),
                allOf(
                  TypeMatcher<AssertionError>(),
                  predicate<AssertionError>(
                    (error) => error.message.toString().contains(text),
                    'should contain text `$text` if not unknown error',
                  ),
                ),
              ),
            ),
          );

          continue;
        }

        assert(true, 'Unsupported test-$index $testInput');
      }
    },
  );

  test(
    'locale identifier canonicalize',
    () {
      for (final (
            index: _,
            :testInput as String,
            :testOutput as String,
          ) in _parse('canonicalize.json')) {
        final locale = Locale(testInput);

        expect(locale.toString(), testOutput);
      }
    },
  );

  test(
    'locale is empty',
    () {
      final locale = Locale();

      expect(locale.toString(), BaseLocale.undTag);
    },
  );

  test(
    'locale canonicalize',
    () {
      expect(
        Locale('En-latn-US-MacOS').toString(),
        Locale('eN-latN-uS-macOS').toString(),
      );
      expect(
        BaseLocale.canonicalize('pL_latn_pl-U-HC-H12'),
        'pl-Latn-PL-u-hc-h12',
      );
    },
  );

  test(
    'clone',
    () {
      final locale = Locale('en-US-u-hc-h23-ca-islamic-civil-ss-true');

      expect(locale.toString(), locale.clone().toString());
      expect(locale.toString(), locale.mutableClone().toString());
    },
  );

  test(
    'mutable',
    () {
      final locale = MutableLocale();

      expect(locale.toString(), BaseLocale.undTag);
      locale.language = 'en';
      expect(locale.toString(), 'en');

      locale.region = 'uk';
      expect(locale.toString(), 'en-UK');

      locale.script = 'latn';
      expect(locale.toString(), 'en-Latn-UK');

      locale.region = null;
      expect(locale.toString(), 'en-Latn');

      locale
        ..script = null
        ..region = 'uS';
      expect(locale.toString(), 'en-US');
    },
  );

  test(
    'mutable',
    () {
      final locale = MutableLocale('en');

      expect(locale.toString(), 'en');
      locale.language = 'en';
      expect(locale.toString(), 'en');

      locale.region = 'uk';
      expect(locale.toString(), 'en-UK');

      locale.script = 'latn';
      expect(locale.toString(), 'en-Latn-UK');

      locale.region = null;
      expect(locale.toString(), 'en-Latn');

      locale
        ..script = null
        ..region = 'uS';
      expect(locale.toString(), 'en-US');
    },
  );

  test(
    'normalizing equality',
    () {
      const bcp47Strings = [
        'pl-LaTn-pL',
        'uNd',
        'UND-FONIPA',
        'UnD-t-m0-TrUe',
        'uNd-u-CA-Japanese',
        'ZH',
      ];

      for (final str in bcp47Strings) {
        expect(Locale(str).normalizingEquality(str), true);
      }
    },
  );

  test(
    'strict compare',
    () {
      const bcp47Strings = [
        'pl-Latn-PL',
        'und',
        'und-fonipa',
        'und-t-m0-true',
        'und-u-ca-hebrew',
        'und-u-ca-japanese',
        'zh',
      ];

      for (final [a, b] in bcp47Strings.windows(2)) {
        expect(a.compareTo(b), isNegative);

        final aLocale = Locale(a);

        expect(aLocale.strictCompare(a), isZero);
        expect(
          aLocale.compareTo(Locale(a)),
          aLocale.strictCompare(a),
        );

        expect(aLocale.strictCompare(b), isNegative);
        expect(
          aLocale.compareTo(Locale(b)),
          aLocale.strictCompare(b),
        );
      }
    },
  );
}
