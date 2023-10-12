// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LineBreakIteratorLatin1 {
  _LineBreakIteratorLatin1(this.dynamicLibrary)
      : next = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            ),
            int Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            )>(
          'ICU4XLineBreakIteratorLatin1_next',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
            )>(
          'ICU4XLineBreakIteratorLatin1_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XLineBreakIteratorLatin1> self,
  ) next;
}
