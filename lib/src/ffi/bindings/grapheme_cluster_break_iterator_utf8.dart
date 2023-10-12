// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GraphemeClusterBreakIteratorUtf8 {
  _GraphemeClusterBreakIteratorUtf8(this.dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> self,
            ),
            int Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> self,
            )>(
          'ICU4XGraphemeClusterBreakIteratorUtf8_next',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> self,
            )>(
          'ICU4XGraphemeClusterBreakIteratorUtf8_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XGraphemeClusterBreakIteratorUtf8> self,
  ) next;
}
