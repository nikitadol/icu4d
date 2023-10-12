// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _IsoDateTime {
  _IsoDateTime(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
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
        ),
        crateFromDateAndTime = dynamicLibrary.lookupFunction<
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
        ),
        createFromMinutesSinceLocalUnixEpoch = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XIsoDateTime> Function(
              ffi.Int32 minutes,
            ),
            ffi.Pointer<ICU4XIsoDateTime> Function(
              int minutes,
            )>(
          'ICU4XIsoDateTime_create_from_minutes_since_local_unix_epoch',
          isLeaf: true,
        ),
        date = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XIsoDate> Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            ffi.Pointer<ICU4XIsoDate> Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_date',
          isLeaf: true,
        ),
        time = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XTime> Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            ffi.Pointer<ICU4XTime> Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_time',
          isLeaf: true,
        ),
        toAny = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_to_any',
          isLeaf: true,
        ),
        minutesSinceLocalUnixEpoch = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_minutes_since_local_unix_epoch',
          isLeaf: true,
        ),
        toCalendar = dynamicLibrary.lookupFunction<
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
        ),
        hour = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_hour',
          isLeaf: true,
        ),
        minute = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_minute',
          isLeaf: true,
        ),
        second = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_second',
          isLeaf: true,
        ),
        nanosecond = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_nanosecond',
          isLeaf: true,
        ),
        dayOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_day_of_month',
          isLeaf: true,
        ),
        dayOfWeek = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_day_of_week',
          isLeaf: true,
        ),
        weekOfMonth = dynamicLibrary.lookupFunction<
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
        ),
        weekOfYear = dynamicLibrary.lookupFunction<
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
        ),
        month = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_month',
          isLeaf: true,
        ),
        year = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_year',
          isLeaf: true,
        ),
        monthsInYear = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_months_in_year',
          isLeaf: true,
        ),
        daysInMonth = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_days_in_month',
          isLeaf: true,
        ),
        daysInYear = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_days_in_year',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            ),
            void Function(
              ffi.Pointer<ICU4XIsoDateTime> self,
            )>(
          'ICU4XIsoDateTime_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ffi.Pointer<ICU4XIsoDateTime> Function(
    ffi.Pointer<ICU4XIsoDate> date,
    ffi.Pointer<ICU4XTime> time,
  ) crateFromDateAndTime;

  final ResultICU4XIsoDateTimeOrICU4XError Function(
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int nanosecond,
  ) create;

  final ffi.Pointer<ICU4XIsoDateTime> Function(
    int minutes,
  ) createFromMinutesSinceLocalUnixEpoch;

  final ffi.Pointer<ICU4XIsoDate> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) date;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) dayOfMonth;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) dayOfWeek;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) daysInMonth;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) daysInYear;

  final void Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) hour;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) minute;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) minutesSinceLocalUnixEpoch;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) month;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) monthsInYear;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) nanosecond;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) second;

  final ffi.Pointer<ICU4XTime> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) time;

  final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) toAny;

  final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
    int first_weekday,
  ) weekOfMonth;

  final ResultICU4XWeekOfOrICU4XError Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
    ffi.Pointer<ICU4XWeekCalculator> calculator,
  ) weekOfYear;

  final int Function(
    ffi.Pointer<ICU4XIsoDateTime> self,
  ) year;
}
