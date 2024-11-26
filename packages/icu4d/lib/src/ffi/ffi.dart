import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io' as io;
import 'dart:typed_data';

import 'package:ffi/ffi.dart' as ffi;

import 'generated_bindings.dart';

export 'generated_bindings.dart';

part 'diplomat_writeable.dart';
part 'library_loader.dart';
part 'base_locale.dart';
part 'u_string.dart';

final IcuLib _icuLib = IcuLib(libraryLoader.open());
