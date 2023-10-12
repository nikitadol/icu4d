// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _SentenceBreakIteratorLatin1 {
  _SentenceBreakIteratorLatin1(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
            ),
            int Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
            )>('ICU4XSentenceBreakIteratorLatin1_next'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
            )>('ICU4XSentenceBreakIteratorLatin1_destroy');

  final int Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
  ) next;

  final void Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
  ) destroy;
}
