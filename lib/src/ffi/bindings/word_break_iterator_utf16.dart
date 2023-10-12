// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordBreakIteratorUtf16 {
  _WordBreakIteratorUtf16(this.dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>(
          'ICU4XWordBreakIteratorUtf16_next',
          isLeaf: true,
        ),
        wordType = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>(
          'ICU4XWordBreakIteratorUtf16_word_type',
          isLeaf: true,
        ),
        isWordLike = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>(
          'ICU4XWordBreakIteratorUtf16_is_word_like',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>(
          'ICU4XWordBreakIteratorUtf16_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) destroy;

  final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) isWordLike;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) next;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) wordType;
}
