import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;
import 'package:tar/tar.dart';

const icuVersion = '1.5.0';
const icuDir = 'icu4x';
const _rootDirName = 'icu4x-icu-$icuVersion/';

Future<void> main() async {
  final dio = Dio();

  print('Start downloading icu4x');

  final releaseResponse = await dio.get<ResponseBody>(
    'https://github.com/unicode-org/icu4x/archive/refs/tags/icu@$icuVersion.tar.gz',
    options: Options(
      responseType: ResponseType.stream,
    ),
  );

  final currentPath = Directory.current.path;
  final icu4xRootDirPath = path.join(currentPath, icuDir);
  final icu4xRootDir = Directory(icu4xRootDirPath);

  if (icu4xRootDir.existsSync()) {
    icu4xRootDir.deleteSync(recursive: true);
  }

  await TarReader.forEach(
    releaseResponse.data!.stream.transform(gzip.decoder.cast()),
    (entry) async {
      final entryPath = entry.header.name.substring(_rootDirName.length);
      final fullEntryPath = path.join(icu4xRootDirPath, entryPath);

      if (!path.isWithin(icu4xRootDirPath, fullEntryPath) &&
          entryPath.isNotEmpty) {
        throw UnsupportedError(entryPath);
      }

      switch (entry.type) {
        case TypeFlag.dir:
          final dir = Directory(fullEntryPath);
          if (!dir.existsSync()) {
            dir.createSync(recursive: true);
          }
        case TypeFlag.reg:
          final file = File(fullEntryPath);
          if (!file.existsSync()) {
            file.createSync(recursive: true);
          }

          await entry.contents.pipe(file.openWrite(mode: FileMode.writeOnly));
        case TypeFlag.symlink:
          Link(fullEntryPath).createSync(
            entry.header.linkName!,
            recursive: true,
          );
        default:
          throw UnsupportedError('type `${entry.type.name}` for $entryPath');
      }
    },
  );

  dio.close(force: true);

  print('icu4x downloaded');
}
