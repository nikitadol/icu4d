// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _SentenceBreakIteratorLatin1 {
  _SentenceBreakIteratorLatin1(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
          )>>('ICU4XSentenceBreakIteratorLatin1_destroy');

  late final int Function(
    ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
  ) next = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
      ),
      int Function(
        ffi.Pointer<ICU4XSentenceBreakIteratorLatin1> self,
      )>(
    'ICU4XSentenceBreakIteratorLatin1_next',
    isLeaf: true,
  );
}
