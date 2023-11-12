library icu4d_ffi;

import 'dart:ffi' as ffi;
import 'dart:io';

import 'generated_bindings.dart';

part 'library_loader.dart';
part 'wrapper/locale.dart';

final _bindings = NativeLibrary(libraryLoader.openIcu4x());
