// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _LineBreakIteratorUtf8 {
  _LineBreakIteratorUtf8(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
      )>(
    'ICU4XLineBreakIteratorUtf8_destroy',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
  ) next = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
      ),
      int Function(
        ffi.Pointer<ICU4XLineBreakIteratorUtf8> self,
      )>(
    'ICU4XLineBreakIteratorUtf8_next',
    isLeaf: true,
  );
}
