// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _GraphemeClusterBreakIteratorLatin1 {
  _GraphemeClusterBreakIteratorLatin1(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> self,
          )>>('ICU4XGraphemeClusterBreakIteratorLatin1_destroy');

  late final int Function(
    ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> self,
  ) next = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> self,
      ),
      int Function(
        ffi.Pointer<ICU4XGraphemeClusterBreakIteratorLatin1> self,
      )>(
    'ICU4XGraphemeClusterBreakIteratorLatin1_next',
    isLeaf: true,
  );
}
