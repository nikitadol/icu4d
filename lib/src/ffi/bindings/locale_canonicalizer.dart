// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleCanonicalizer {
  _LocaleCanonicalizer(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLocaleCanonicalizer_create'),
        createExtended = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleCanonicalizerOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLocaleCanonicalizer_create_extended'),
        canonicalize = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            int Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XLocaleCanonicalizer_canonicalize'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleCanonicalizer> self,
            )>('ICU4XLocaleCanonicalizer_destroy');

  final ResultICU4XLocaleCanonicalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ResultICU4XLocaleCanonicalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createExtended;

  final int Function(
    ffi.Pointer<ICU4XLocaleCanonicalizer> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) canonicalize;

  final void Function(
    ffi.Pointer<ICU4XLocaleCanonicalizer> self,
  ) destroy;
}
