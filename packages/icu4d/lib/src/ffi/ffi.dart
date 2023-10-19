library icu4d_ffi;

import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';
import 'dart:typed_data';

import 'package:icu4d/icu.dart';
import 'package:icu4d/src/ffi/bindings.dart';
import 'package:icu4d/src/helpers/ascii.dart';

part 'allocator.dart';
part 'library_loader.dart';
part 'wrappers/any_calendar_kind.dart';
part 'wrappers/bcp47_to_iana_mapper.dart';
part 'wrappers/data_provider.dart';
part 'wrappers/locale/base_locale.dart';
part 'wrappers/locale/locale.dart';
part 'wrappers/locale/mutable_locale.dart';
part 'wrappers/string.dart';
part 'wrappers/writable.dart';

final icu4XBindings = Icu4XBindings(libraryLoader.openIcu4x());

final icu4XAllocator = Icu4XAllocator();
