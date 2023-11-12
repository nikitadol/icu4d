import 'dart:ffi' as ffi;

import 'package:icu4d/ffi_lib_loader.dart';
import 'package:test/scaffolding.dart';

void setupTest() {
  setUpAll(() {
    libraryLoader.overrideForAll(() => ffi.DynamicLibrary.process());
  });
}
