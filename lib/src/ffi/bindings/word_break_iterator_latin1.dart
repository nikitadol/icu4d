// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordBreakIteratorLatin1 {
  _WordBreakIteratorLatin1(this.dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>(
          'ICU4XWordBreakIteratorLatin1_next',
          isLeaf: true,
        ),
        wordType = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>(
          'ICU4XWordBreakIteratorLatin1_word_type',
          isLeaf: true,
        ),
        isWordLike = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>(
          'ICU4XWordBreakIteratorLatin1_is_word_like',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>(
          'ICU4XWordBreakIteratorLatin1_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) destroy;

  final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) isWordLike;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) next;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) wordType;
}
