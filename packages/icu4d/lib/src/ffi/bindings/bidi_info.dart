// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _BidiInfo {
  _BidiInfo(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XBidiInfo> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XBidiInfo> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XBidiInfo> self,
          )>>('ICU4XBidiInfo_destroy');

  late final int Function(
    ffi.Pointer<ICU4XBidiInfo> self,
    int pos,
  ) levelAt = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XBidiInfo> self,
        ffi.Size pos,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiInfo> self,
        int pos,
      )>(
    'ICU4XBidiInfo_level_at',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XBidiParagraph> Function(
    ffi.Pointer<ICU4XBidiInfo> self,
    int n,
  ) paragraphAt = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XBidiParagraph> Function(
        ffi.Pointer<ICU4XBidiInfo> self,
        ffi.Size n,
      ),
      ffi.Pointer<ICU4XBidiParagraph> Function(
        ffi.Pointer<ICU4XBidiInfo> self,
        int n,
      )>(
    'ICU4XBidiInfo_paragraph_at',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XBidiInfo> self,
  ) paragraphCount = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XBidiInfo> self,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiInfo> self,
      )>(
    'ICU4XBidiInfo_paragraph_count',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XBidiInfo> self,
  ) size = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XBidiInfo> self,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiInfo> self,
      )>(
    'ICU4XBidiInfo_size',
    isLeaf: true,
  );
}
