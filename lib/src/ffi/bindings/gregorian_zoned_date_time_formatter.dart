// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GregorianZonedDateTimeFormatter {
  _GregorianZonedDateTimeFormatter(this.dynamicLibrary)
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
            )>(
          'ICU4XGregorianZonedDateTimeFormatter_create_with_lengths',
          isLeaf: true,
        ),
        createWithLengthsAndIso8601TimeZoneFallback =
            dynamicLibrary.lookupFunction<
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
                )>(
          'ICU4XGregorianZonedDateTimeFormatter_create_with_lengths_and_iso_8601_time_zone_fallback',
          isLeaf: true,
        ),
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
          'ICU4XGregorianZonedDateTimeFormatter_format_iso_datetime_with_custom_time_zone',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
            )>(
          'ICU4XGregorianZonedDateTimeFormatter_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

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

  final void Function(
    ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
  ) destroy;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XGregorianZonedDateTimeFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> datetime,
    ffi.Pointer<ICU4XCustomTimeZone> time_zone,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetimeWithCustomTimeZone;
}
