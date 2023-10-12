// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GregorianZonedDateTimeFormatter {
  _GregorianZonedDateTimeFormatter(ffi.DynamicLibrary dynamicLibrary)
      : createWithLengths = dynamicLibrary.lookupFunction<
            ResultICU4XGregorianZonedDateTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 date_length,
              ffi.Int32 time_length,
            ),
            ResultICU4XGregorianZonedDateTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int date_length,
              int time_length,
            )>('ICU4XGregorianZonedDateTimeFormatter_create_with_lengths'),
        createWithLengthsAndIso8601TimeZoneFallback = dynamicLibrary.lookupFunction<
            ResultICU4XGregorianZonedDateTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 date_length,
              ffi.Int32 time_length,
              ICU4XIsoTimeZoneOptions zone_options,
            ),
            ResultICU4XGregorianZonedDateTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int date_length,
              int time_length,
              ICU4XIsoTimeZoneOptions zone_options,
            )>('ICU4XGregorianZonedDateTimeFormatter_create_with_lengths_and_iso_8601_time_zone_fallback'),
        formatIsoDatetimeWithCustomTimeZone = dynamicLibrary.lookupFunction<
                ResultVoidOrICU4XError Function(
                  ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
                  ffi.Pointer<ICU4XIsoDateTime> datetime,
                  ffi.Pointer<ICU4XCustomTimeZone> time_zone,
                  ffi.Pointer<DiplomatWriteable> write,
                ),
                ResultVoidOrICU4XError Function(
                  ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
                  ffi.Pointer<ICU4XIsoDateTime> datetime,
                  ffi.Pointer<ICU4XCustomTimeZone> time_zone,
                  ffi.Pointer<DiplomatWriteable> write,
                )>(
            'ICU4XGregorianZonedDateTimeFormatter_format_iso_datetime_with_custom_time_zone'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
            )>('ICU4XGregorianZonedDateTimeFormatter_destroy');

  final ResultICU4XGregorianZonedDateTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
    int time_length,
  ) createWithLengths;

  final ResultICU4XGregorianZonedDateTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
    int time_length,
    ICU4XIsoTimeZoneOptions zone_options,
  ) createWithLengthsAndIso8601TimeZoneFallback;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> datetime,
    ffi.Pointer<ICU4XCustomTimeZone> time_zone,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetimeWithCustomTimeZone;

  final void Function(
    ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
  ) destroy;
}
