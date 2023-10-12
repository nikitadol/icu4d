// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WordBreakIteratorUtf8 {
  _WordBreakIteratorUtf8(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>('ICU4XWordBreakIteratorUtf8_next'),
        wordType = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>('ICU4XWordBreakIteratorUtf8_word_type'),
        isWordLike = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            bool Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>('ICU4XWordBreakIteratorUtf8_is_word_like'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
            )>('ICU4XWordBreakIteratorUtf8_destroy');

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) next;

  final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) wordType;

  final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) isWordLike;

  final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) destroy;
}
