// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _SentenceSegmenter {
  _SentenceSegmenter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XSentenceSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XSentenceSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XSentenceSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XSentenceSegmenter_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XSentenceSegmenter> self,
      ),
      void Function(
        ffi.Pointer<ICU4XSentenceSegmenter> self,
      )>(
    'ICU4XSentenceSegmenter_destroy',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1 = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16 = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XSentenceSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8 = dynamicLibrary.lookupFunction<
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
  );
}
