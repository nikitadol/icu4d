library icu4d_ffi;

import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:icu4d/icu.dart';
import 'package:icu4d/src/ffi/bindings.dart';

part 'allocator.dart';
part 'ascii_extension.dart';
part 'library_loader.dart';
part 'utf8_extension.dart';
part 'wrappers/locale_base.dart';
part 'wrappers/locale.dart';
part 'writable_extension.dart';

final icu4XBindings = Icu4XBindings(libraryLoader.openIcu4x());

final icu4XAllocator = Icu4XAllocator();
