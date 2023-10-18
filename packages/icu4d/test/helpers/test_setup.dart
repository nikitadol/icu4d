import 'dart:ffi' as ffi;

import 'package:icu4d/icu_ffi.dart';

const icu4xDirPath = '../../icu4x';

void setupTest() {
  libraryLoader.overrideForAll(
    () => ffi.DynamicLibrary.open(
      '$icu4xDirPath/target/debug/libicu_capi_cdylib.dylib',
    ),
  );

  icu4XBindings.logger.initSimpleLogger();
}
