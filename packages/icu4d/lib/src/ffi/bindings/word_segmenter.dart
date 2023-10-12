// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordSegmenter {
  _WordSegmenter(this.dynamicLibrary)
      : createAuto = dynamicLibrary.lookupFunction<
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XWordSegmenter_create_auto',
          isLeaf: true,
        ),
        createLstm = dynamicLibrary.lookupFunction<
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XWordSegmenter_create_lstm',
          isLeaf: true,
        ),
        createDictionary = dynamicLibrary.lookupFunction<
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XWordSegmenter_create_dictionary',
          isLeaf: true,
        ),
        segmentUtf8 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XWordBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XWordBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>(
          'ICU4XWordSegmenter_segment_utf8',
          isLeaf: true,
        ),
        segmentUtf16 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XWordBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XWordBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              int input_len,
            )>(
          'ICU4XWordSegmenter_segment_utf16',
          isLeaf: true,
        ),
        segmentLatin1 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XWordBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XWordBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>(
          'ICU4XWordSegmenter_segment_latin1',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
            )>(
          'ICU4XWordSegmenter_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createAuto;

  final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createDictionary;

  final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createLstm;

  final void Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
  ) destroy;

  final ffi.Pointer<ICU4XWordBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1;

  final ffi.Pointer<ICU4XWordBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16;

  final ffi.Pointer<ICU4XWordBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8;
}
