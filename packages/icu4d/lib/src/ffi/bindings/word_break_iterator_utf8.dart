// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordBreakIteratorUtf8 {
  _WordBreakIteratorUtf8(this.dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>(
          'ICU4XWordBreakIteratorUtf8_next',
          isLeaf: true,
        ),
        wordType = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>(
          'ICU4XWordBreakIteratorUtf8_word_type',
          isLeaf: true,
        ),
        isWordLike = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>(
          'ICU4XWordBreakIteratorUtf8_is_word_like',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>(
          'ICU4XWordBreakIteratorUtf8_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) destroy;

  final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) isWordLike;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) next;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) wordType;
}
