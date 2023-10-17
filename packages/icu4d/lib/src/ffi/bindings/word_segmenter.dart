// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _WordSegmenter {
  _WordSegmenter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createAuto = dynamicLibrary.lookupFunction<
      ResultICU4XWordSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XWordSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XWordSegmenter_create_auto',
    isLeaf: true,
  );

  late final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createDictionary = dynamicLibrary.lookupFunction<
      ResultICU4XWordSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XWordSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XWordSegmenter_create_dictionary',
    isLeaf: true,
  );

  late final ResultICU4XWordSegmenterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createLstm = dynamicLibrary.lookupFunction<
      ResultICU4XWordSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XWordSegmenterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XWordSegmenter_create_lstm',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XWordSegmenter> self,
      ),
      void Function(
        ffi.Pointer<ICU4XWordSegmenter> self,
      )>(
    'ICU4XWordSegmenter_destroy',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XWordBreakIteratorLatin1> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentLatin1 = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XWordBreakIteratorUtf16> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint16> input_data,
    int input_len,
  ) segmentUtf16 = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XWordBreakIteratorUtf8> Function(
    ffi.Pointer<ICU4XWordSegmenter> self,
    ffi.Pointer<ffi.Uint8> input_data,
    int input_len,
  ) segmentUtf8 = dynamicLibrary.lookupFunction<
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
  );
}
