// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleCanonicalizer {
  _LocaleCanonicalizer(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XLocaleCanonicalizer_create',
          isLeaf: true,
        ),
        createExtended = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XLocaleCanonicalizer_create_extended',
          isLeaf: true,
        ),
        canonicalize = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            int Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
              ffi.Pointer<ICU4XLocale> locale,
            )>(
          'ICU4XLocaleCanonicalizer_canonicalize',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
            )>(
          'ICU4XLocaleCanonicalizer_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final int Function(
    ffi.Pointer<ICU4XLocaleCanonicalizer> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) canonicalize;

  final ResultICU4XLocaleCanonicalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ResultICU4XLocaleCanonicalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createExtended;

  final void Function(
    ffi.Pointer<ICU4XLocaleCanonicalizer> self,
  ) destroy;
}
