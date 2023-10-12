// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _BidiInfo {
  _BidiInfo(this.dynamicLibrary)
      : paragraphCount = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiInfo> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiInfo> self,
            )>(
          'ICU4XBidiInfo_paragraph_count',
          isLeaf: true,
        ),
        paragraphAt = dynamicLibrary.lookupFunction<
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
        ),
        size = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiInfo> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiInfo> self,
            )>(
          'ICU4XBidiInfo_size',
          isLeaf: true,
        ),
        levelAt = dynamicLibrary.lookupFunction<
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
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XBidiInfo> self,
            ),
            void Function(
              ffi.Pointer<ICU4XBidiInfo> self,
            )>(
          'ICU4XBidiInfo_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XBidiInfo> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XBidiInfo> self,
    int pos,
  ) levelAt;

  final ffi.Pointer<ICU4XBidiParagraph> Function(
    ffi.Pointer<ICU4XBidiInfo> self,
    int n,
  ) paragraphAt;

  final int Function(
    ffi.Pointer<ICU4XBidiInfo> self,
  ) paragraphCount;

  final int Function(
    ffi.Pointer<ICU4XBidiInfo> self,
  ) size;
}
