import 'dart:io';

// -Clinker-plugin-lto -C linker=../tools/ld
void main(List<String> args) {
  _handleSymbols(args);

  final needRemove = {
    '-plugin-opt=O0',
    '-plugin-opt=O3',
    '-plugin-opt=mcpu=apple-m1',
    '-Wl',
  };

  final resultArgs = <String>[];

  for (final arg in args) {
    if (needRemove.contains(arg)) {
      continue;
    }

    if (arg.contains(',')) {
      for (final subArg in arg.split(',')) {
        if (needRemove.contains(subArg)) {
          continue;
        }

        resultArgs.add(subArg);
      }
    } else {
      resultArgs.add(arg);
    }
  }

  resultArgs.addAll([
    '--threads=${Platform.numberOfProcessors - 1}',
    '-O3',
    '-dead_strip',
    '-S',
  ]);

  final res = Process.runSync('ld64.lld', resultArgs);

  if (res.exitCode != 0 ||
      res.stdout.toString().isNotEmpty ||
      res.stderr.toString().isNotEmpty) {
    _writeLog(
      (StringBuffer()
            ..writeln(resultArgs.map((e) => '`$e`').join(' '))
            ..writeln(resultArgs.join(' '))
            ..writeln('-' * 100)
            ..writeln(res.exitCode)
            ..writeln('-' * 100)
            ..writeln(res.stdout)
            ..writeln('-' * 100)
            ..writeln(res.stderr)
            ..writeln('-' * 100))
          .toString(),
    );
  }

  if (res.exitCode != 0) {
    exit(res.exitCode);
  }
}

void _handleSymbols(List<String> args) {
  final index = args.indexOf('-exported_symbols_list');
  if (index == -1) {
    return;
  }

  final symbolsFile = File(args[index + 1]);
  final symbols = symbolsFile.readAsStringSync();

  if (!symbols.contains('ICU4XLocale_create_from_string')) {
    return;
  }

  symbolsFile.writeAsStringSync(
    '_ICU4XLocale_create_from_string',
    flush: true,
  );
}

void _writeLog(String log) {
  File('tools/${DateTime.timestamp()}.txt')
      .writeAsStringSync(log);
}
