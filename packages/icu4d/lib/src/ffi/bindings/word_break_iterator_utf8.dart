// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _WordBreakIteratorUtf8 {
  _WordBreakIteratorUtf8(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
          )>>('ICU4XWordBreakIteratorUtf8_destroy');

  late final bool Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) isWordLike = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
      ),
      bool Function(
        ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
      )>(
    'ICU4XWordBreakIteratorUtf8_is_word_like',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) next = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
      ),
      int Function(
        ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
      )>(
    'ICU4XWordBreakIteratorUtf8_next',
    isLeaf: true,
  );

  /// C args:
  /// - [ICU4XWordBreakIteratorUtf8]*
  ///
  /// C return:
  /// - [ICU4XSegmenterWordType]
  late final int Function(
    ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
  ) wordType = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
      ),
      int Function(
        ffi.Pointer<ICU4XWordBreakIteratorUtf8> self,
      )>(
    'ICU4XWordBreakIteratorUtf8_word_type',
    isLeaf: true,
  );
}
