library icu4d_ffi_bindings;

import 'dart:convert';
import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:meta/meta.dart';

part 'allocator.dart';
part 'ascii_extension.dart';
part 'diplomat_writeable.dart';
part 'library_loader.dart';
part 'utf8_extension.dart';

final Icu4XFFIBindings bindings = Icu4XFFIBindings._(libraryLoader.openIcu4x());

final class Icu4XFFIBindings {
  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  @visibleForTesting
  final Icu4XAllocator allocator = Icu4XAllocator();

  Icu4XFFIBindings._(this.dynamicLibrary)
      : diplomatAlloc = dynamicLibrary
            .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Uint8> Function(
                      ffi.Size size,
                      ffi.Size align,
                    )>>('diplomat_alloc')
            .asFunction(isLeaf: true),
        diplomatFree = dynamicLibrary
            .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Uint8> Function(
                      ffi.Pointer<ffi.Uint8> ptr,
                      ffi.Size size,
                      ffi.Size align,
                    )>>('diplomat_free')
            .asFunction(isLeaf: true);

  final ffi.Pointer<ffi.Uint8> Function(
    int size,
    int align,
  ) diplomatAlloc;

  final ffi.Pointer<ffi.Uint8> Function(
    ffi.Pointer<ffi.Uint8>,
    int size,
    int align,
  ) diplomatFree;

}
