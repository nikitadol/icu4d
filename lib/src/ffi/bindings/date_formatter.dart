// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DateFormatter {
  _DateFormatter(ffi.DynamicLibrary dynamicLibrary)
      : createWithLength = dynamicLibrary.lookupFunction<
            ResultICU4XDateFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 date_length,
            ),
            ResultICU4XDateFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int date_length,
            )>('ICU4XDateFormatter_create_with_length'),
        formatDate = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateFormatter_format_date'),
        formatIsoDate = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateFormatter_format_iso_date'),
        formatDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateFormatter_format_datetime'),
        formatIsoDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateFormatter_format_iso_datetime'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDateFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDateFormatter> self,
            )>('ICU4XDateFormatter_destroy');

  final ResultICU4XDateFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
  ) createWithLength;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDate;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XIsoDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDate;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDatetime;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime;

  final void Function(
    ffi.Pointer<ICU4XDateFormatter> self,
  ) destroy;
}
