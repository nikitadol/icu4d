// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleFallbackIterator {
  _LocaleFallbackIterator(this.dynamicLibrary)
      : get = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            ),
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            )>(
          'ICU4XLocaleFallbackIterator_get',
          isLeaf: true,
        ),
        step = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            )>(
          'ICU4XLocaleFallbackIterator_step',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            )>(
          'ICU4XLocaleFallbackIterator_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbackIterator> self,
  ) destroy;

  final ffi.Pointer<ICU4XLocale> Function(
    ffi.Pointer<ICU4XLocaleFallbackIterator> self,
  ) get;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbackIterator> self,
  ) step;
}
