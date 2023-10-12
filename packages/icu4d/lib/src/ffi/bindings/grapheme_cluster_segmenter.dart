// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GraphemeClusterSegmenter {
  _GraphemeClusterSegmenter(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XGraphemeClusterSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XGraphemeClusterSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XGraphemeClusterSegmenter_create',
          isLeaf: true,
        ),
        segmentUtf8 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>(
          'ICU4XGraphemeClusterSegmenter_segment_utf8',
          isLeaf: true,
        ),
        segmentUtf16 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              int input_len,
            )>(
          'ICU4XGraphemeClusterSegmenter_segment_utf16',
          isLeaf: true,
        ),
        segmentLatin1 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>(
          'ICU4XGraphemeClusterSegmenter_segment_latin1',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
            )>(
          'ICU4XGraphemeClusterSegmenter_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XGraphemeClusterSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final void Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
  ) destroy;

  final ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1;

  final ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16;

  final ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8;
}
