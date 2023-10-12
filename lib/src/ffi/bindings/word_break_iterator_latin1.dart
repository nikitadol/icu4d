// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordBreakIteratorLatin1 {
  _WordBreakIteratorLatin1(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>('ICU4XWordBreakIteratorLatin1_next'),
        wordType = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>('ICU4XWordBreakIteratorLatin1_word_type'),
        isWordLike = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>('ICU4XWordBreakIteratorLatin1_is_word_like'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
            )>('ICU4XWordBreakIteratorLatin1_destroy');

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) next;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) wordType;

  final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) isWordLike;

  final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) destroy;
}
