import 'dart:ffi' as ffi;

import 'package:icu4d/icu_ffi.dart';
import 'package:path/path.dart';

final icu4xDirPath = join('..', '..', 'icu4x');

void setupTest() {
  final dynamicLibrary = ffi.DynamicLibrary.open(
    join(icu4xDirPath, 'target', 'release', 'libicu_capi_cdylib.dylib'),
  );

  libraryLoader.overrideForAll(() => dynamicLibrary);

  dynamicLibrary.lookupFunction<ffi.Bool Function(), bool Function()>(
    'ICU4XLogger_init_simple_logger',
    isLeaf: true,
  )();
}
