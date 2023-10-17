import 'dart:convert';
import 'dart:io';

import 'package:icu4d/icu.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

import 'test_setup.dart';

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

  test(
    'locale parsing',
    () {
      for (final (
            :index,
            :testInput as Map<String, Object?>,
            :testOutput as Map<String, Object?>,
          ) in _parse('locale.json')) {
        if (testInput case {'identifier': String identifier}) {
          final locale = Locale.fromString(identifier);

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
        final locale = Locale.fromString(testInput);

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
              () => Locale.fromString(identifier),
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
            () => Locale.fromString(name),
            throwsA(
              allOf(
                TypeMatcher<FFIError>(),
                predicate<FFIError>(
                  (error) => error.code == 0 || error.toString().contains(text),
                  'should contain text `$text` if not unknown error',
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
        final locale = Locale.fromString(testInput);

        expect(locale.toString(), testOutput);
      }
    },
  );

  test(
    'locale is empty',
    () {
      final locale = Locale.createUnd();

      expect(locale.toString(), LocaleBase.undTag);
    },
  );

  test(
    'locale canonicalize',
    () {
      expect(
        Locale.fromString('En-latn-US-MacOS').toString(),
        Locale.fromString('eN-latN-uS-macOS').toString(),
      );
    },
  );
}
