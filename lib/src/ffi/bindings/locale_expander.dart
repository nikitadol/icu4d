// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleExpander {
  _LocaleExpander(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLocaleExpander_create'),
        createExtended = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XLocaleExpanderOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XLocaleExpander_create_extended'),
        maximize = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            int Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XLocaleExpander_maximize'),
        minimize = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            int Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XLocaleExpander_minimize'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleExpander> self,
            )>('ICU4XLocaleExpander_destroy');

  final ResultICU4XLocaleExpanderOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ResultICU4XLocaleExpanderOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) createExtended;

  final int Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) maximize;

  final int Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) minimize;

  final void Function(
    ffi.Pointer<ICU4XLocaleExpander> self,
  ) destroy;
}
