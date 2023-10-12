// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordSegmenter {
  _WordSegmenter(ffi.DynamicLibrary dynamicLibrary)
      : createAuto = dynamicLibrary.lookupFunction<
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XWordSegmenter_create_auto'),
        createLstm = dynamicLibrary.lookupFunction<
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XWordSegmenter_create_lstm'),
        createDictionary = dynamicLibrary.lookupFunction<
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XWordSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XWordSegmenter_create_dictionary'),
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
            )>('ICU4XWordSegmenter_segment_utf8'),
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
            )>('ICU4XWordSegmenter_segment_utf16'),
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
            )>('ICU4XWordSegmenter_segment_latin1'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordSegmenter> self,
            )>('ICU4XWordSegmenter_destroy');

  final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createAuto;

  final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createLstm;

  final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createDictionary;

  final ffi.Pointer<ICU4XWordBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8;

  final ffi.Pointer<ICU4XWordBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16;

  final ffi.Pointer<ICU4XWordBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1;

  final void Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
  ) destroy;
}
