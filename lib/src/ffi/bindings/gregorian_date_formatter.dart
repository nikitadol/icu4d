// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GregorianDateFormatter {
  _GregorianDateFormatter(ffi.DynamicLibrary dynamicLibrary)
      : createWithLength = dynamicLibrary.lookupFunction<
            ResultICU4XGregorianDateFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 length,
            ),
            ResultICU4XGregorianDateFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int length,
            )>('ICU4XGregorianDateFormatter_create_with_length'),
        formatIsoDate = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XGregorianDateFormatter> self,
              ffi.Pointer<ICU4XIsoDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XGregorianDateFormatter> self,
              ffi.Pointer<ICU4XIsoDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XGregorianDateFormatter_format_iso_date'),
        formatIsoDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XGregorianDateFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XGregorianDateFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XGregorianDateFormatter_format_iso_datetime'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGregorianDateFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGregorianDateFormatter> self,
            )>('ICU4XGregorianDateFormatter_destroy');

  final ResultICU4XGregorianDateFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createWithLength;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XGregorianDateFormatter> self,
    ffi.Pointer<ICU4XIsoDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDate;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XGregorianDateFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime;

  final void Function(
    ffi.Pointer<ICU4XGregorianDateFormatter> self,
  ) destroy;
}
