// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CustomTimeZone {
  _CustomTimeZone(this.dynamicLibrary)
      : createFromString = dynamicLibrary.lookupFunction<
            ResultICU4XCustomTimeZoneOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
            ),
            ResultICU4XCustomTimeZoneOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
            )>(
          'ICU4XCustomTimeZone_create_from_string',
          isLeaf: true,
        ),
        createEmpty = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCustomTimeZone> Function(),
            ffi.Pointer<ICU4XCustomTimeZone> Function()>(
          'ICU4XCustomTimeZone_create_empty',
          isLeaf: true,
        ),
        createUtc = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCustomTimeZone> Function(),
            ffi.Pointer<ICU4XCustomTimeZone> Function()>(
          'ICU4XCustomTimeZone_create_utc',
          isLeaf: true,
        ),
        trySetGmtOffsetSeconds = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Int32 offset_seconds,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              int offset_seconds,
            )>(
          'ICU4XCustomTimeZone_try_set_gmt_offset_seconds',
          isLeaf: true,
        ),
        clearGmtOffset = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_clear_gmt_offset',
          isLeaf: true,
        ),
        gmtOffsetSeconds = dynamicLibrary.lookupFunction<
            ResultInt32OrTOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultInt32OrTOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_gmt_offset_seconds',
          isLeaf: true,
        ),
        isGmtOffsetPositive = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_is_gmt_offset_positive',
          isLeaf: true,
        ),
        isGmtOffsetZero = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_is_gmt_offset_zero',
          isLeaf: true,
        ),
        gmtOffsetHasMinutes = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_gmt_offset_has_minutes',
          isLeaf: true,
        ),
        gmtOffsetHasSeconds = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_gmt_offset_has_seconds',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XCustomTimeZone_try_set_time_zone_id',
          isLeaf: true,
        ),
        clearTimeZoneId = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_clear_time_zone_id',
          isLeaf: true,
        ),
        timeZoneId = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XCustomTimeZone_time_zone_id',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XCustomTimeZone_try_set_metazone_id',
          isLeaf: true,
        ),
        clearMetazoneId = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_clear_metazone_id',
          isLeaf: true,
        ),
        metazoneId = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XCustomTimeZone_metazone_id',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XCustomTimeZone_try_set_zone_variant',
          isLeaf: true,
        ),
        clearZoneVariant = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_clear_zone_variant',
          isLeaf: true,
        ),
        zoneVariant = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XCustomTimeZone_zone_variant',
          isLeaf: true,
        ),
        setStandardTime = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_set_standard_time',
          isLeaf: true,
        ),
        setDaylightTime = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_set_daylight_time',
          isLeaf: true,
        ),
        isStandardTime = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_is_standard_time',
          isLeaf: true,
        ),
        isDaylightTime = dynamicLibrary.lookupFunction<
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            ResultBoolOrICU4XError Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_is_daylight_time',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XCustomTimeZone_maybe_calculate_metazone',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCustomTimeZone> self,
            )>(
          'ICU4XCustomTimeZone_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearGmtOffset;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearMetazoneId;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearTimeZoneId;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearZoneVariant;

  final ffi.Pointer<ICU4XCustomTimeZone> Function() createEmpty;

  final ResultICU4XCustomTimeZoneOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) createFromString;

  final ffi.Pointer<ICU4XCustomTimeZone> Function() createUtc;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) destroy;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetHasMinutes;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetHasSeconds;

  final ResultInt32OrTOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetSeconds;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isDaylightTime;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isGmtOffsetPositive;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isGmtOffsetZero;

  final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isStandardTime;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ICU4XMetazoneCalculator> metazone_calculator,
    ffi.Pointer<ICU4XIsoDateTime> local_datetime,
  ) maybeCalculateMetazone;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) metazoneId;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) setDaylightTime;

  final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) setStandardTime;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) timeZoneId;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    int offset_seconds,
  ) trySetGmtOffsetSeconds;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetMetazoneId;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetTimeZoneId;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetZoneVariant;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) zoneVariant;
}
