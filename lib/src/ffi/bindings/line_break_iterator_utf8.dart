// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LineBreakIteratorUtf8 {
  _LineBreakIteratorUtf8(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
            ),
            int Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
            )>('ICU4XLineBreakIteratorUtf8_next'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
            )>('ICU4XLineBreakIteratorUtf8_destroy');

  final int Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
  ) next;

  final void Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
  ) destroy;
}
