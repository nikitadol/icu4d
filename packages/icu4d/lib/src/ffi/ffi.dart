library icu4d_ffi;

import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';
import 'dart:typed_data';

import 'package:icu4d/src/ffi/bindings.dart';
import 'package:icu4d/src/helpers/ascii.dart';

import '../shared/shared.dart';

part 'allocator.dart';
part 'library_loader.dart';
part 'wrappers/bcp47_to_iana_mapper.dart';
part 'wrappers/bidi/bidi.dart';
part 'wrappers/bidi/bidi_direction.dart';
part 'wrappers/bidi/bidi_info.dart';
part 'wrappers/bidi/bidi_paragraph.dart';
part 'wrappers/calendar/calendar.dart';
part 'wrappers/calendar/calendar_kind.dart';
part 'wrappers/canonical_combining_class_map.dart';
part 'wrappers/data_provider.dart';
part 'wrappers/locale/base_locale.dart';
part 'wrappers/locale/locale.dart';
part 'wrappers/locale/mutable_locale.dart';
part 'wrappers/string.dart';
part 'wrappers/writable.dart';

final icu4XBindings = Icu4XBindings(libraryLoader.openIcu4x());

final icu4XAllocator = Icu4XAllocator();
