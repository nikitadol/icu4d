// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GraphemeClusterSegmenter {
  _GraphemeClusterSegmenter(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XGraphemeClusterSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XGraphemeClusterSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XGraphemeClusterSegmenter_create'),
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
            )>('ICU4XGraphemeClusterSegmenter_segment_utf8'),
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
            )>('ICU4XGraphemeClusterSegmenter_segment_utf16'),
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
            )>('ICU4XGraphemeClusterSegmenter_segment_latin1'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
            )>('ICU4XGraphemeClusterSegmenter_destroy');

  final ResultICU4XGraphemeClusterSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8;

  final ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16;

  final ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1;

  final void Function(
    ffi.Pointer<ICU4XGraphemeClusterSegmenter> self,
  ) destroy;
}
