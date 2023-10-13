// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LineBreakIteratorUtf16 {
  _LineBreakIteratorUtf16(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
      )>(
    'ICU4XLineBreakIteratorUtf16_destroy',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
  ) next = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
      ),
      int Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf16> self,
      )>(
    'ICU4XLineBreakIteratorUtf16_next',
    isLeaf: true,
  );
}
