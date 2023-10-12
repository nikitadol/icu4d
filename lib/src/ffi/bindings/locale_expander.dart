// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleExpander {
  _LocaleExpander(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XLocaleExpander_create',
          isLeaf: true,
        ),
        createExtended = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XLocaleExpander_create_extended',
          isLeaf: true,
        ),
        maximize = dynamicLibrary.lookupFunction<
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
        ),
        minimize = dynamicLibrary.lookupFunction<
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
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
            )>(
          'ICU4XLocaleExpander_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XLocaleExpanderOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ResultICU4XLocaleExpanderOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createExtended;

  final void Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) maximize;

  final int Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) minimize;
}
