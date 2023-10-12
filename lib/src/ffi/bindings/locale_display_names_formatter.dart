// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _LocaleDisplayNamesFormatter {
  _LocaleDisplayNamesFormatter(ffi.DynamicLibrary dynamicLibrary)
      : tryNewUnstable = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleDisplayNamesFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ICU4XDisplayNamesOptionsV1 options,
            ),
            ResultICU4XLocaleDisplayNamesFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ICU4XDisplayNamesOptionsV1 options,
            )>('ICU4XLocaleDisplayNamesFormatter_try_new_unstable'),
        of = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocaleDisplayNamesFormatter_of'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
            )>('ICU4XLocaleDisplayNamesFormatter_destroy');

  final ResultICU4XLocaleDisplayNamesFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    ICU4XDisplayNamesOptionsV1 options,
  ) tryNewUnstable;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
    ffi.Pointer<ICU4XLocale> locale,
    ffi.Pointer<DiplomatWriteable> write,
  ) of;

  final void Function(
    ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
  ) destroy;
}
