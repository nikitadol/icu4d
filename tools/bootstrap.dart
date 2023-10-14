import 'dart:io' as io;

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:tar/tar.dart' as tar;

const _icu4xVersion = '1.3.2';
const _icu4x = 'icu4x';
const _tarRootDir = '$_icu4x-icu-$_icu4xVersion';

final _icu4XSourcesUrl = Uri.parse(
  'https://github.com/unicode-org/icu4x/archive/refs/tags/icu@$_icu4xVersion.tar.gz',
);

Future<void> main() async {
  print('Starting...');
  final httpClient = http.Client();

  print('Requesting sources...');
  final sourcesResponse =
      await httpClient.send(http.Request('get', _icu4XSourcesUrl));

  final tarReader = tar.TarReader(
    sourcesResponse.stream.transform(io.gzip.decoder),
  );

  final sourcesRoot = io.Directory(_icu4x);

  if (sourcesRoot.existsSync()) {
    sourcesRoot.deleteSync(recursive: true);
  }
  sourcesRoot.createSync(recursive: true);

  print('Extracting sources...');
  while (await tarReader.moveNext()) {
    final entry = tarReader.current;

    assert(entry.name.startsWith(_tarRootDir));

    final resultPath =
        sourcesRoot.path + entry.name.substring(_tarRootDir.length);

    if (!(path.isWithin(sourcesRoot.path, resultPath) ||
        path.equals(sourcesRoot.path, resultPath))) {
      throw Exception('Invalid path ${resultPath}');
    }

    switch (entry.type) {
      case tar.TypeFlag.dir:
        io.Directory(resultPath).createSync(recursive: true);
      case tar.TypeFlag.reg:
        final file = io.File(resultPath);

        if (!file.existsSync()) {
          file.createSync(recursive: true);
        }

        await entry.contents.pipe(file.openWrite());
      default:
        throw UnsupportedError('${entry.type} ${entry.name}');
    }
  }

  await tarReader.cancel();

  httpClient.close();

  print('Building $_icu4x for tests...');

  final buildResult = io.Process.runSync(
    'cargo',
    const [
      'build',
      '-p',
      'icu_capi_cdylib',
      '--all-features',
      '-q',
    ],
    runInShell: false,
    workingDirectory: _icu4x,
  );

  if (buildResult.stderr.toString().isNotEmpty) {
    throw Exception('$_icu4x error: ${buildResult.stderr}');
  }

  print('Done!');
}
