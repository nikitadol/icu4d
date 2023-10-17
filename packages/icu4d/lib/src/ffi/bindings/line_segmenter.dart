// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _LineSegmenter {
  _LineSegmenter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createAuto = dynamicLibrary.lookupFunction<
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLineSegmenter_create_auto',
    isLeaf: true,
  );

  late final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ICU4XLineBreakOptionsV1 options,
  ) createAutoWithOptionsV1 = dynamicLibrary.lookupFunction<
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ICU4XLineBreakOptionsV1 options,
      ),
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ICU4XLineBreakOptionsV1 options,
      )>(
    'ICU4XLineSegmenter_create_auto_with_options_v1',
    isLeaf: true,
  );

  late final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createDictionary = dynamicLibrary.lookupFunction<
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLineSegmenter_create_dictionary',
    isLeaf: true,
  );

  late final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ICU4XLineBreakOptionsV1 options,
  ) createDictionaryWithOptionsV1 = dynamicLibrary.lookupFunction<
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ICU4XLineBreakOptionsV1 options,
      ),
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ICU4XLineBreakOptionsV1 options,
      )>(
    'ICU4XLineSegmenter_create_dictionary_with_options_v1',
    isLeaf: true,
  );

  late final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createLstm = dynamicLibrary.lookupFunction<
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLineSegmenter_create_lstm',
    isLeaf: true,
  );

  late final ResultICU4XLineSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ICU4XLineBreakOptionsV1 options,
  ) createLstmWithOptionsV1 = dynamicLibrary.lookupFunction<
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ICU4XLineBreakOptionsV1 options,
      ),
      ResultICU4XLineSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ICU4XLineBreakOptionsV1 options,
      )>(
    'ICU4XLineSegmenter_create_lstm_with_options_v1',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
      )>(
    'ICU4XLineSegmenter_destroy',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XLineBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1 = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XLineBreakIteratorLatin1> Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
        ffi.Pointer<ffi.Uint8> input_data,
        ffi.Size input_len,
      ),
      ffi.Pointer<ICU4XLineBreakIteratorLatin1> Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
        ffi.Pointer<ffi.Uint8> input_data,
        int input_len,
      )>(
    'ICU4XLineSegmenter_segment_latin1',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XLineBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16 = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XLineBreakIteratorUtf16> Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
        ffi.Pointer<ffi.Uint16> input_data,
        ffi.Size input_len,
      ),
      ffi.Pointer<ICU4XLineBreakIteratorUtf16> Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
        ffi.Pointer<ffi.Uint16> input_data,
        int input_len,
      )>(
    'ICU4XLineSegmenter_segment_utf16',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XLineBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XLineSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8 = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XLineBreakIteratorUtf8> Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
        ffi.Pointer<ffi.Uint8> input_data,
        ffi.Size input_len,
      ),
      ffi.Pointer<ICU4XLineBreakIteratorUtf8> Function(
        ffi.Pointer<ICU4XLineSegmenter> self,
        ffi.Pointer<ffi.Uint8> input_data,
        int input_len,
      )>(
    'ICU4XLineSegmenter_segment_utf8',
    isLeaf: true,
  );
}
