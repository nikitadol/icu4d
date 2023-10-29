library icu4d_ffi;

import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';
import 'dart:typed_data';

import 'bindings.dart';
import '../helpers/ascii.dart';
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
part 'wrappers/casemap/case_mapper.dart';
part 'wrappers/casemap/leading_adjustment.dart';
part 'wrappers/casemap/titlecase_mapper.dart';
part 'wrappers/casemap/trailing_case.dart';
part 'wrappers/collator/alternate_handling.dart';
part 'wrappers/collator/backward_second_level.dart';
part 'wrappers/collator/case_first.dart';
part 'wrappers/collator/case_level.dart';
part 'wrappers/collator/collator.dart';
part 'wrappers/collator/max_variable.dart';
part 'wrappers/collator/numeric.dart';
part 'wrappers/collator/strength.dart';
part 'wrappers/data_provider.dart';
part 'wrappers/locale/base_locale.dart';
part 'wrappers/locale/locale.dart';
part 'wrappers/locale/mutable_locale.dart';
part 'wrappers/normalizer_properties/canonical_combining_class_map.dart';
part 'wrappers/normalizer_properties/canonical_composition.dart';
part 'wrappers/normalizer_properties/canonical_decomposition.dart';
part 'wrappers/string.dart';
part 'wrappers/writable.dart';

final _bindings = Icu4XBindings(libraryLoader.openIcu4x());

final _allocator = Icu4XAllocator();
