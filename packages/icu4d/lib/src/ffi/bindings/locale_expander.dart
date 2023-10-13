// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleExpander {
  _LocaleExpander(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XLocaleExpanderOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XLocaleExpanderOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLocaleExpanderOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLocaleExpander_create',
    isLeaf: true,
  );

  late final ResultICU4XLocaleExpanderOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createExtended = dynamicLibrary.lookupFunction<
      ResultICU4XLocaleExpanderOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLocaleExpanderOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLocaleExpander_create_extended',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLocaleExpander> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLocaleExpander> self,
      )>(
    'ICU4XLocaleExpander_destroy',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) maximize = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XLocaleExpander> self,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      int Function(
        ffi.Pointer<ICU4XLocaleExpander> self,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XLocaleExpander_maximize',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) minimize = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XLocaleExpander> self,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      int Function(
        ffi.Pointer<ICU4XLocaleExpander> self,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XLocaleExpander_minimize',
    isLeaf: true,
  );
}
