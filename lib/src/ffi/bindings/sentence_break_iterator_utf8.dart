// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _SentenceBreakIteratorUtf8 {
  _SentenceBreakIteratorUtf8(this.dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> self,
            ),
            int Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> self,
            )>(
          'ICU4XSentenceBreakIteratorUtf8_next',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> self,
            ),
            void Function(
              ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> self,
            )>(
          'ICU4XSentenceBreakIteratorUtf8_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorUtf8> self,
  ) next;
}
