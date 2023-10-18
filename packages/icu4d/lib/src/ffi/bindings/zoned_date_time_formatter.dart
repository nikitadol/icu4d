// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _ZonedDateTimeFormatter {
  _ZonedDateTimeFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XDateLength]
  /// - [ICU4XTimeLength]
  ///
  /// C return:
  /// - [ResultICU4XZonedDateTimeFormatterOrICU4XError]
  late final ResultICU4XZonedDateTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
    int time_length,
  ) createWithLengths = dynamicLibrary.lookupFunction<
      ResultICU4XZonedDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 date_length,
        ffi.Int32 time_length,
      ),
      ResultICU4XZonedDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int date_length,
        int time_length,
      )>(
    'ICU4XZonedDateTimeFormatter_create_with_lengths',
    isLeaf: true,
  );

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XDateLength]
  /// - [ICU4XTimeLength]
  /// - [ICU4XIsoTimeZoneOptions]
  ///
  /// C return:
  /// - [ResultICU4XZonedDateTimeFormatterOrICU4XError]
  late final ResultICU4XZonedDateTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
    int time_length,
    ICU4XIsoTimeZoneOptions zone_options,
  ) createWithLengthsAndIso8601TimeZoneFallback = dynamicLibrary.lookupFunction<
      ResultICU4XZonedDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 date_length,
        ffi.Int32 time_length,
        ICU4XIsoTimeZoneOptions zone_options,
      ),
      ResultICU4XZonedDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int date_length,
        int time_length,
        ICU4XIsoTimeZoneOptions zone_options,
      )>(
    'ICU4XZonedDateTimeFormatter_create_with_lengths_and_iso_8601_time_zone_fallback',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
          )>>('ICU4XZonedDateTimeFormatter_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
    ffi.Pointer<ICU4XDateTime> datetime,
    ffi.Pointer<ICU4XCustomTimeZone> time_zone,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDatetimeWithCustomTimeZone = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
        ffi.Pointer<ICU4XDateTime> datetime,
        ffi.Pointer<ICU4XCustomTimeZone> time_zone,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
        ffi.Pointer<ICU4XDateTime> datetime,
        ffi.Pointer<ICU4XCustomTimeZone> time_zone,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XZonedDateTimeFormatter_format_datetime_with_custom_time_zone',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> datetime,
    ffi.Pointer<ICU4XCustomTimeZone> time_zone,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetimeWithCustomTimeZone = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> datetime,
        ffi.Pointer<ICU4XCustomTimeZone> time_zone,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XZonedDateTimeFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> datetime,
        ffi.Pointer<ICU4XCustomTimeZone> time_zone,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XZonedDateTimeFormatter_format_iso_datetime_with_custom_time_zone',
    isLeaf: true,
  );
}
