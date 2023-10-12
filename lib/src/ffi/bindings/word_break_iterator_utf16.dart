// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordBreakIteratorUtf16 {
  _WordBreakIteratorUtf16(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>('ICU4XWordBreakIteratorUtf16_next'),
        wordType = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>('ICU4XWordBreakIteratorUtf16_word_type'),
        isWordLike = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>('ICU4XWordBreakIteratorUtf16_is_word_like'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
            )>('ICU4XWordBreakIteratorUtf16_destroy');

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) next;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) wordType;

  final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) isWordLike;

  final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf16> self,
  ) destroy;
}
