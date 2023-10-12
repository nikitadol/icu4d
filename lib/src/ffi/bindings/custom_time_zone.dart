// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CustomTimeZone {
  _CustomTimeZone(ffi.DynamicLibrary dynamicLibrary)
      : createFromString = dynamicLibrary.lookupFunction<
            ResultICU4XCustomTimeZoneOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
            ),
            ResultICU4XCustomTimeZoneOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
            )>('ICU4XCustomTimeZone_create_from_string'),
        createEmpty = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCustomTimeZone> Function(),
            ffi.Pointer<ICU4XCustomTimeZone>
                Function()>('ICU4XCustomTimeZone_create_empty'),
        createUtc = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCustomTimeZone> Function(),
            ffi.Pointer<ICU4XCustomTimeZone>
                Function()>('ICU4XCustomTimeZone_create_utc'),
        trySetGmtOffsetSeconds = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Int32 offset_seconds,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              int offset_seconds,
            )>('ICU4XCustomTimeZone_try_set_gmt_offset_seconds'),
        clearGmtOffset = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_clear_gmt_offset'),
        gmtOffsetSeconds = dynamicLibrary.lookupFunction<
            ResultInt32OrTOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultInt32OrTOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_gmt_offset_seconds'),
        isGmtOffsetPositive = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_is_gmt_offset_positive'),
        isGmtOffsetZero = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_is_gmt_offset_zero'),
        gmtOffsetHasMinutes = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_gmt_offset_has_minutes'),
        gmtOffsetHasSeconds = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_gmt_offset_has_seconds'),
        trySetTimeZoneId = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ffi.Uint8> id_data,
              ffi.Size id_len,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ffi.Uint8> id_data,
              int id_len,
            )>('ICU4XCustomTimeZone_try_set_time_zone_id'),
        clearTimeZoneId = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_clear_time_zone_id'),
        timeZoneId = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XCustomTimeZone_time_zone_id'),
        trySetMetazoneId = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ffi.Uint8> id_data,
              ffi.Size id_len,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ffi.Uint8> id_data,
              int id_len,
            )>('ICU4XCustomTimeZone_try_set_metazone_id'),
        clearMetazoneId = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_clear_metazone_id'),
        metazoneId = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XCustomTimeZone_metazone_id'),
        trySetZoneVariant = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ffi.Uint8> id_data,
              ffi.Size id_len,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ffi.Uint8> id_data,
              int id_len,
            )>('ICU4XCustomTimeZone_try_set_zone_variant'),
        clearZoneVariant = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_clear_zone_variant'),
        zoneVariant = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XCustomTimeZone_zone_variant'),
        setStandardTime = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_set_standard_time'),
        setDaylightTime = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_set_daylight_time'),
        isStandardTime = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_is_standard_time'),
        isDaylightTime = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_is_daylight_time'),
        maybeCalculateMetazone = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ICU4XMetazoneCalculator> metazone_calculator,
              ffi.Pointer<ICU4XIsoDateTime> local_datetime,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<ICU4XMetazoneCalculator> metazone_calculator,
              ffi.Pointer<ICU4XIsoDateTime> local_datetime,
            )>('ICU4XCustomTimeZone_maybe_calculate_metazone'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>('ICU4XCustomTimeZone_destroy');

  final ResultICU4XCustomTimeZoneOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) createFromString;

  final ffi.Pointer<ICU4XCustomTimeZone> Function() createEmpty;

  final ffi.Pointer<ICU4XCustomTimeZone> Function() createUtc;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    int offset_seconds,
  ) trySetGmtOffsetSeconds;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearGmtOffset;

  final ResultInt32OrTOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetSeconds;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isGmtOffsetPositive;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isGmtOffsetZero;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetHasMinutes;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetHasSeconds;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetTimeZoneId;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearTimeZoneId;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) timeZoneId;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetMetazoneId;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearMetazoneId;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) metazoneId;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetZoneVariant;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearZoneVariant;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) zoneVariant;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) setStandardTime;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) setDaylightTime;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isStandardTime;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isDaylightTime;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ICU4XMetazoneCalculator> metazone_calculator,
    ffi.Pointer<ICU4XIsoDateTime> local_datetime,
  ) maybeCalculateMetazone;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) destroy;
}
