// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _WordBreakIteratorLatin1 {
  _WordBreakIteratorLatin1(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
          )>>('ICU4XWordBreakIteratorLatin1_destroy');

  late final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) isWordLike = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
      ),
      bool Function(
        ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
      )>(
    'ICU4XWordBreakIteratorLatin1_is_word_like',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) next = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
      ),
      int Function(
        ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
      )>(
    'ICU4XWordBreakIteratorLatin1_next',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
  ) wordType = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
      ),
      int Function(
        ffi.Pointer<ICU4XWordBreakIteratorLatin1> self,
      )>(
    'ICU4XWordBreakIteratorLatin1_word_type',
    isLeaf: true,
  );
}
