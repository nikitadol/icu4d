import 'dart:ffi' as ffi;

import 'package:icu4d/icu_ffi.dart';

void setupTest() {
  libraryLoader.overrideForAll(
    () =>
        ffi.DynamicLibrary.open('icu4x/target/debug/libicu_capi_cdylib.dylib'),
  );

  icu4XBindings.logger.initSimpleLogger();
}
