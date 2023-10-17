// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _IsoDateTime {
  _IsoDateTime(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ffi.Pointer<ICU4XIsoDateTime> Function(
    ffi.Pointer<ICU4XIsoDate> date,
    ffi.Pointer<ICU4XTime> time,
  ) crateFromDateAndTime = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XIsoDateTime> Function(
        ffi.Pointer<ICU4XIsoDate> date,
        ffi.Pointer<ICU4XTime> time,
      ),
      ffi.Pointer<ICU4XIsoDateTime> Function(
        ffi.Pointer<ICU4XIsoDate> date,
        ffi.Pointer<ICU4XTime> time,
      )>(
    'ICU4XIsoDateTime_crate_from_date_and_time',
    isLeaf: true,
  );

  late final ResultICU4XIsoDateTimeOrICU4XError Function(
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int nanosecond,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XIsoDateTimeOrICU4XError Function(
        ffi.Int32 year,
        ffi.Uint8 month,
        ffi.Uint8 day,
        ffi.Uint8 hour,
        ffi.Uint8 minute,
        ffi.Uint8 second,
        ffi.Uint32 nanosecond,
      ),
      ResultICU4XIsoDateTimeOrICU4XError Function(
        int year,
        int month,
        int day,
        int hour,
        int minute,
        int second,
        int nanosecond,
      )>(
    'ICU4XIsoDateTime_create',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XIsoDateTime> Function(
    int minutes,
  ) createFromMinutesSinceLocalUnixEpoch = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XIsoDateTime> Function(
        ffi.Int32 minutes,
      ),
      ffi.Pointer<ICU4XIsoDateTime> Function(
        int minutes,
      )>(
    'ICU4XIsoDateTime_create_from_minutes_since_local_unix_epoch',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XIsoDate> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) date = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XIsoDate> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      ffi.Pointer<ICU4XIsoDate> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_date',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) dayOfMonth = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_day_of_month',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) dayOfWeek = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_day_of_week',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) daysInMonth = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_days_in_month',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) daysInYear = dynamicLibrary.lookupFunction<
      ffi.Uint16 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_days_in_year',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XIsoDateTime> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XIsoDateTime> self,
          )>>('ICU4XIsoDateTime_destroy');

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) hour = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_hour',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) minute = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_minute',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) minutesSinceLocalUnixEpoch = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_minutes_since_local_unix_epoch',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) month = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_month',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) monthsInYear = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_months_in_year',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) nanosecond = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_nanosecond',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) second = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_second',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XTime> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) time = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XTime> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      ffi.Pointer<ICU4XTime> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_time',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) toAny = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XDateTime> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      ffi.Pointer<ICU4XDateTime> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_to_any',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XDateTime> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
        ffi.Pointer<ICU4XCalendar> calendar,
      ),
      ffi.Pointer<ICU4XDateTime> Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
        ffi.Pointer<ICU4XCalendar> calendar,
      )>(
    'ICU4XIsoDateTime_to_calendar',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
    int first_weekday,
  ) weekOfMonth = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
        ffi.Int32 first_weekday,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
        int first_weekday,
      )>(
    'ICU4XIsoDateTime_week_of_month',
    isLeaf: true,
  );

  late final ResultICU4XWeekOfOrICU4XError Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
    ffi.Pointer<ICU4XWeekCalculator> calculator,
  ) weekOfYear = dynamicLibrary.lookupFunction<
      ResultICU4XWeekOfOrICU4XError Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
        ffi.Pointer<ICU4XWeekCalculator> calculator,
      ),
      ResultICU4XWeekOfOrICU4XError Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
        ffi.Pointer<ICU4XWeekCalculator> calculator,
      )>(
    'ICU4XIsoDateTime_week_of_year',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) year = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDateTime> self,
      )>(
    'ICU4XIsoDateTime_year',
    isLeaf: true,
  );
}
