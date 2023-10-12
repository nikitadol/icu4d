// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GraphemeClusterBreakIteratorUtf16 {
  _GraphemeClusterBreakIteratorUtf16(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> self,
            ),
            int Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> self,
            )>('ICU4XGraphemeClusterBreakIteratorUtf16_next'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> self,
            )>('ICU4XGraphemeClusterBreakIteratorUtf16_destroy');

  final int Function(
    ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> self,
  ) next;

  final void Function(
    ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf16> self,
  ) destroy;
}
