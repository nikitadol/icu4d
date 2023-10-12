// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _SentenceSegmenter {
  _SentenceSegmenter(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XSentenceSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XSentenceSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XSentenceSegmenter_create',
          isLeaf: true,
        ),
        segmentUtf8 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>(
          'ICU4XSentenceSegmenter_segment_utf8',
          isLeaf: true,
        ),
        segmentUtf16 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              int input_len,
            )>(
          'ICU4XSentenceSegmenter_segment_utf16',
          isLeaf: true,
        ),
        segmentLatin1 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>(
          'ICU4XSentenceSegmenter_segment_latin1',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XSentenceSegmenter> self,
            )>(
          'ICU4XSentenceSegmenter_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XSentenceSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final void Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
  ) destroy;

  final ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1;

  final ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16;

  final ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8;
}
