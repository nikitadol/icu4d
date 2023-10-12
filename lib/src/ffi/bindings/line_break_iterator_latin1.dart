// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LineBreakIteratorLatin1 {
  _LineBreakIteratorLatin1(ffi.DynamicLibrary dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            ),
            int Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            )>('ICU4XLineBreakIteratorLatin1_next'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            )>('ICU4XLineBreakIteratorLatin1_destroy');

  final int Function(
    ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
  ) next;

  final void Function(
    ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
  ) destroy;
}