// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LineBreakIteratorUtf16 {
  _LineBreakIteratorUtf16(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
            ),
            int Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
            )>('ICU4XLineBreakIteratorUtf16_next'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
            )>('ICU4XLineBreakIteratorUtf16_destroy');

  final int Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
  ) next;

  final void Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
  ) destroy;
}
