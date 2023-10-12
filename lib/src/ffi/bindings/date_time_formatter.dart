// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DateTimeFormatter {
  _DateTimeFormatter(ffi.DynamicLibrary dynamicLibrary)
      : createWithLengths = dynamicLibrary.lookupFunction<
            ResultICU4XDateTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 date_length,
              ffi.Int32 time_length,
            ),
            ResultICU4XDateTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int date_length,
              int time_length,
            )>('ICU4XDateTimeFormatter_create_with_lengths'),
        formatDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTimeFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTimeFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateTimeFormatter_format_datetime'),
        formatIsoDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTimeFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTimeFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateTimeFormatter_format_iso_datetime'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDateTimeFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDateTimeFormatter> self,
            )>('ICU4XDateTimeFormatter_destroy');

  final ResultICU4XDateTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
    int time_length,
  ) createWithLengths;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTimeFormatter> self,
    ffi.Pointer<ICU4XDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDatetime;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTimeFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime;

  final void Function(
    ffi.Pointer<ICU4XDateTimeFormatter> self,
  ) destroy;
}
