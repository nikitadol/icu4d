import 'dart:convert';
import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:icu4d/icu.dart';
import 'package:path/path.dart';

import '../../test/helpers/test_setup.dart';

Future<void> main() async {
  setupTest();

  final (
    contentLatin,
    contentAsian,
    contentRussian,
    contentChinese,
    contentJpH,
    contentJpK,
    contentKorean,
    contentThai,
  ) = await (
    _loadLines('TestNames_Latin'),
    _loadLines('TestNames_Asian'),
    _loadLines('TestNames_Russian'),
    _loadLines('TestNames_Chinese'),
    _loadLines('TestNames_Japanese_h'),
    _loadLines('TestNames_Japanese_k'),
    _loadLines('TestNames_Korean'),
    _loadLines('TestNames_Thai'),
  ).wait;

  const List<Strength> strength = [
    Strength.primary,
  ];

  final List<(Locale, List<(String, List<String>)>, List<Strength>)> params = [
    (Locale('en_US'), [contentLatin], strength),
    (Locale('da_DK'), [contentLatin], strength),
    (Locale('fr_CA'), [contentLatin], strength),
    (
      Locale('ja_JP'),
      [contentLatin, contentJpH, contentJpK, contentAsian],
      strength,
    ),
    (Locale('zh-u-co-pinyin'), [contentLatin, contentChinese], strength),
    (Locale('zh-u-co-stroke'), [contentLatin, contentChinese], strength),
    (Locale('ru_RU'), [contentLatin, contentRussian], strength),
    (Locale('th'), [contentLatin, contentThai], strength),
    (Locale('ko_KR'), [contentLatin, contentKorean], strength),
  ];

  final dataProvider = DataProvider.compiled();

  for (final (locale, lists, benchStrength) in params) {
    for (final (name, list) in lists) {
      final testName = '$locale/$name';

      DartSortBenchmark(
        '$testName/dart',
        list,
      ).report();

      for (final strength in benchStrength) {
        CollatorSortBenchmark(
          '$testName/collator/${strength.name}',
          list,
          dataProvider,
          locale,
          strength,
        ).report();
      }
    }
  }
}

final _dataPath = join(
  icu4xDirPath,
  'components',
  'collator',
  'benches',
  'data',
);

Future<(String, List<String>)> _loadLines(String name) async {
  final file = File(join(_dataPath, '$name.txt'));

  final lines = await file
      .openRead()
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .where((line) => !line.startsWith('#'))
      .toList();

  return (name, lines.reversed.toList());
}

class DartSortBenchmark extends BenchmarkBase {
  DartSortBenchmark(super.name, this.items);

  final List<String> items;

  @override
  void run() {
    final items = List.of(this.items);

    items.sort();
  }
}

class CollatorSortBenchmark extends BenchmarkBase {
  CollatorSortBenchmark(
    super.name,
    this.items,
    DataProvider dataProvider,
    BaseLocale locale,
    Strength strength,
  ) : collator = Collator.from(dataProvider, locale, strength: strength);

  final List<String> items;
  final Collator collator;

  @override
  void run() {
    final items = List.of(this.items);

    items.sort(collator.compare);
  }
}
