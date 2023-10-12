// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LineSegmenter {
  _LineSegmenter(ffi.DynamicLibrary dynamicLibrary)
      : createAuto = dynamicLibrary.lookupFunction<
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLineSegmenter_create_auto'),
        createLstm = dynamicLibrary.lookupFunction<
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLineSegmenter_create_lstm'),
        createDictionary = dynamicLibrary.lookupFunction<
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLineSegmenter_create_dictionary'),
        createAutoWithOptionsV1 = dynamicLibrary.lookupFunction<
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ICU4XLineBreakOptionsV1 options,
            ),
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ICU4XLineBreakOptionsV1 options,
            )>('ICU4XLineSegmenter_create_auto_with_options_v1'),
        createLstmWithOptionsV1 = dynamicLibrary.lookupFunction<
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ICU4XLineBreakOptionsV1 options,
            ),
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ICU4XLineBreakOptionsV1 options,
            )>('ICU4XLineSegmenter_create_lstm_with_options_v1'),
        createDictionaryWithOptionsV1 = dynamicLibrary.lookupFunction<
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ICU4XLineBreakOptionsV1 options,
            ),
            ResultICU4XLineSegmenterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ICU4XLineBreakOptionsV1 options,
            )>('ICU4XLineSegmenter_create_dictionary_with_options_v1'),
        segmentUtf8 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLineBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XLineBreakIteratorUtf8> Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>('ICU4XLineSegmenter_segment_utf8'),
        segmentUtf16 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLineBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XLineBreakIteratorUtf16> Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
              ffi.Pointer<ffi.Uint16> input_data,
              int input_len,
            )>('ICU4XLineSegmenter_segment_utf16'),
        segmentLatin1 = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLineBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              ffi.Size input_len,
            ),
            ffi.Pointer<ICU4XLineBreakIteratorLatin1> Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
              ffi.Pointer<ffi.Uint8> input_data,
              int input_len,
            )>('ICU4XLineSegmenter_segment_latin1'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLineSegmenter> self,
            )>('ICU4XLineSegmenter_destroy');

  final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createAuto;

  final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createLstm;

  final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createDictionary;

  final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ICU4XLineBreakOptionsV1 options,
  ) createAutoWithOptionsV1;

  final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ICU4XLineBreakOptionsV1 options,
  ) createLstmWithOptionsV1;

  final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ICU4XLineBreakOptionsV1 options,
  ) createDictionaryWithOptionsV1;

  final ffi.Pointer<ICU4XLineBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8;

  final ffi.Pointer<ICU4XLineBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16;

  final ffi.Pointer<ICU4XLineBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1;

  final void Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
  ) destroy;
}
