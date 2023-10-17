// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _SentenceBreakIteratorUtf16 {
  _SentenceBreakIteratorUtf16(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> self,
          )>>('ICU4XSentenceBreakIteratorUtf16_destroy');

  late final int Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> self,
  ) next = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> self,
      ),
      int Function(
        ffi.Pointer<ICU4XSentenceBreakIteratorUtf16> self,
      )>(
    'ICU4XSentenceBreakIteratorUtf16_next',
    isLeaf: true,
  );
}
