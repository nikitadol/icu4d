// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleFallbackIterator {
  _LocaleFallbackIterator(ffi.DynamicLibrary dynamicLibrary)
      : get = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            ),
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            )>('ICU4XLocaleFallbackIterator_get'),
        step = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            )>('ICU4XLocaleFallbackIterator_step'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleFallbackIterator> self,
            )>('ICU4XLocaleFallbackIterator_destroy');

  final ffi.Pointer<ICU4XLocale> Function(
    ffi.Pointer<ICU4XLocaleFallbackIterator> self,
  ) get;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbackIterator> self,
  ) step;

  final void Function(
    ffi.Pointer<ICU4XLocaleFallbackIterator> self,
  ) destroy;
}
