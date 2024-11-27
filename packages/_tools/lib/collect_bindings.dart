// ignore_for_file: implementation_imports
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:ffigen/src/code_generator/func.dart';
import 'package:ffigen/src/config_provider.dart';
import 'package:ffigen/src/header_parser.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

final _nameRegExp = RegExp(r' (?<name>[0-9a-zA-Z_]*)\(');

void main() {
  const headers = 'icu4x/ffi/capi/bindings/c/**.h';

  final pubspecMap = loadYaml(
    File('packages/_tools/pubspec.yaml').readAsStringSync(),
  ) as YamlMap;

  final usedBindings =
      (pubspecMap['ffigen']['functions']['include'] as YamlList).toSet();
  final excludedBindings = pubspecMap['ffigen']['functions']['exclude'];

  final bindings = <String>{};

  for (final entry in Glob(headers).listSync()) {
    if (entry case final File file) {
      final content = file.readAsStringSync();

      final names = _nameRegExp
          .allMatches(content)
          .map((e) => e.namedGroup('name'))
          .nonNulls;

      bindings.addAll(names);
    }
  }

  final library = parse(
    YamlConfig.fromYaml(
      YamlMap.wrap({
        'output': 'generated.dart',
        'headers': {
          'entry-points': [
            headers,
          ],
        },
        'ignore-source-errors': true,
        'functions': {
          'exclude': excludedBindings,
        }
      }),
    ),
  );

  final functionNames = <String>{
    for (final function in library.bindings)
      if (function is Func) function.name,
  };

  final icuBindings = functionNames.intersection(bindings);

  final groups = icuBindings.groupListsBy<String>(
    (e) => e.substring(0, e.indexOf('_')),
  );

  final sortedKeys = groups.keys.toList()..sort();

  final sb = StringBuffer();

  sb.writeln('<!--- Generated by ${path.prettyUri(Platform.script)} -->');

  for (final item in sortedKeys) {
    final subSb = StringBuffer();

    var allUsed = true;

    for (final subItems in groups[item]!..sort()) {
      final used = usedBindings.contains(subItems);

      allUsed &= used;

      subSb.writeln('  - [${used ? 'x' : ' '}] $subItems');
    }

    sb.writeln('- [${allUsed ? 'x' : ' '}] $item');
    sb.write(subSb);
  }

  final resultFile = File('packages/icu4d/lib/src/ffi/bindings.md');
  resultFile.writeAsStringSync(sb.toString());
}
