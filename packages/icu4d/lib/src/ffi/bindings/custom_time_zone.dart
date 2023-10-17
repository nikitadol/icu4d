// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _CustomTimeZone {
  _CustomTimeZone(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearGmtOffset = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_clear_gmt_offset',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearMetazoneId = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_clear_metazone_id',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearTimeZoneId = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_clear_time_zone_id',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) clearZoneVariant = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_clear_zone_variant',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XCustomTimeZone> Function() createEmpty =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XCustomTimeZone> Function(),
          ffi.Pointer<ICU4XCustomTimeZone> Function()>(
    'ICU4XCustomTimeZone_create_empty',
    isLeaf: true,
  );

  late final ResultICU4XCustomTimeZoneOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) createFromString = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XCustomTimeZone> Function() createUtc =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XCustomTimeZone> Function(),
          ffi.Pointer<ICU4XCustomTimeZone> Function()>(
    'ICU4XCustomTimeZone_create_utc',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCustomTimeZone> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCustomTimeZone> self,
          )>>('ICU4XCustomTimeZone_destroy');

  late final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetHasMinutes = dynamicLibrary.lookupFunction<
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_gmt_offset_has_minutes',
    isLeaf: true,
  );

  late final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetHasSeconds = dynamicLibrary.lookupFunction<
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_gmt_offset_has_seconds',
    isLeaf: true,
  );

  late final ResultInt32OrTOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) gmtOffsetSeconds = dynamicLibrary.lookupFunction<
      ResultInt32OrTOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      ResultInt32OrTOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_gmt_offset_seconds',
    isLeaf: true,
  );

  late final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isDaylightTime = dynamicLibrary.lookupFunction<
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_is_daylight_time',
    isLeaf: true,
  );

  late final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isGmtOffsetPositive = dynamicLibrary.lookupFunction<
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_is_gmt_offset_positive',
    isLeaf: true,
  );

  late final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isGmtOffsetZero = dynamicLibrary.lookupFunction<
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_is_gmt_offset_zero',
    isLeaf: true,
  );

  late final ResultBoolOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) isStandardTime = dynamicLibrary.lookupFunction<
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      ResultBoolOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_is_standard_time',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ICU4XMetazoneCalculator> metazone_calculator,
    ffi.Pointer<ICU4XIsoDateTime> local_datetime,
  ) maybeCalculateMetazone = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) metazoneId = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) setDaylightTime = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_set_daylight_time',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
  ) setStandardTime = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
      )>(
    'ICU4XCustomTimeZone_set_standard_time',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) timeZoneId = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    int offset_seconds,
  ) trySetGmtOffsetSeconds = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ICU4XIanaToBcp47Mapper> mapper,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetIanaTimeZoneId = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
        ffi.Pointer<ICU4XIanaToBcp47Mapper> mapper,
        ffi.Pointer<ffi.Uint8> id_data,
        ffi.Size id_len,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XCustomTimeZone> self,
        ffi.Pointer<ICU4XIanaToBcp47Mapper> mapper,
        ffi.Pointer<ffi.Uint8> id_data,
        int id_len,
      )>(
    'ICU4XCustomTimeZone_try_set_iana_time_zone_id',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetMetazoneId = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetTimeZoneId = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<ffi.Uint8> id_data,
    int id_len,
  ) trySetZoneVariant = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XCustomTimeZone> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) zoneVariant = dynamicLibrary.lookupFunction<
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
  );
}
