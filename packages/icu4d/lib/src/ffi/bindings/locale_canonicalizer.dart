// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleCanonicalizer {
  _LocaleCanonicalizer(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final int Function(
    ffi.Pointer<ICU4XLocaleCanonicalizer> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) canonicalize = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XLocaleCanonicalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XLocaleCanonicalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLocaleCanonicalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLocaleCanonicalizer_create',
    isLeaf: true,
  );

  late final ResultICU4XLocaleCanonicalizerOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createExtended = dynamicLibrary.lookupFunction<
      ResultICU4XLocaleCanonicalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLocaleCanonicalizerOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLocaleCanonicalizer_create_extended',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XLocaleCanonicalizer> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLocaleCanonicalizer> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLocaleCanonicalizer> self,
      )>(
    'ICU4XLocaleCanonicalizer_destroy',
    isLeaf: true,
  );
}
