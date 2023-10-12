// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DateTime {
  _DateTime(this.dynamicLibrary)
      : createFromIsoInCalendar = dynamicLibrary.lookupFunction<
            ResultICU4XDateTimeOrICU4XError Function(
              ffi.Int32 year,
              ffi.Uint8 month,
              ffi.Uint8 day,
              ffi.Uint8 hour,
              ffi.Uint8 minute,
              ffi.Uint8 second,
              ffi.Uint32 nanosecond,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ResultICU4XDateTimeOrICU4XError Function(
              int year,
              int month,
              int day,
              int hour,
              int minute,
              int second,
              int nanosecond,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>(
          'ICU4XDateTime_create_from_iso_in_calendar',
          isLeaf: true,
        ),
        createFromCodesInCalendar = dynamicLibrary.lookupFunction<
            ResultICU4XDateTimeOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> era_code_data,
              ffi.Size era_code_len,
              ffi.Int32 year,
              ffi.Pointer<ffi.Uint8> month_code_data,
              ffi.Size month_code_len,
              ffi.Uint8 day,
              ffi.Uint8 hour,
              ffi.Uint8 minute,
              ffi.Uint8 second,
              ffi.Uint32 nanosecond,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ResultICU4XDateTimeOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> era_code_data,
              int era_code_len,
              int year,
              ffi.Pointer<ffi.Uint8> month_code_data,
              int month_code_len,
              int day,
              int hour,
              int minute,
              int second,
              int nanosecond,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>(
          'ICU4XDateTime_create_from_codes_in_calendar',
          isLeaf: true,
        ),
        createFromDateAndTime = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDate> date,
              ffi.Pointer<ICU4XTime> time,
            ),
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDate> date,
              ffi.Pointer<ICU4XTime> time,
            )>(
          'ICU4XDateTime_create_from_date_and_time',
          isLeaf: true,
        ),
        date = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_date',
          isLeaf: true,
        ),
        time = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_time',
          isLeaf: true,
        ),
        toIso = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XIsoDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XIsoDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_to_iso',
          isLeaf: true,
        ),
        toCalendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>(
          'ICU4XDateTime_to_calendar',
          isLeaf: true,
        ),
        hour = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_hour',
          isLeaf: true,
        ),
        minute = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_minute',
          isLeaf: true,
        ),
        second = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_second',
          isLeaf: true,
        ),
        nanosecond = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_nanosecond',
          isLeaf: true,
        ),
        dayOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_day_of_month',
          isLeaf: true,
        ),
        dayOfWeek = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_day_of_week',
          isLeaf: true,
        ),
        weekOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Int32 first_weekday,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
              int first_weekday,
            )>(
          'ICU4XDateTime_week_of_month',
          isLeaf: true,
        ),
        weekOfYear = dynamicLibrary.lookupFunction<
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            ),
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            )>(
          'ICU4XDateTime_week_of_year',
          isLeaf: true,
        ),
        ordinalMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_ordinal_month',
          isLeaf: true,
        ),
        monthCode = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XDateTime_month_code',
          isLeaf: true,
        ),
        yearInEra = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_year_in_era',
          isLeaf: true,
        ),
        era = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XDateTime_era',
          isLeaf: true,
        ),
        monthsInYear = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_months_in_year',
          isLeaf: true,
        ),
        daysInMonth = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_days_in_month',
          isLeaf: true,
        ),
        daysInYear = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_days_in_year',
          isLeaf: true,
        ),
        calendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCalendar> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XCalendar> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_calendar',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>(
          'ICU4XDateTime_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ffi.Pointer<ICU4XCalendar> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) calendar;

  final ResultICU4XDateTimeOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> era_code_data,
    int era_code_len,
    int year,
    ffi.Pointer<ffi.Uint8> month_code_data,
    int month_code_len,
    int day,
    int hour,
    int minute,
    int second,
    int nanosecond,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) createFromCodesInCalendar;

  final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XDate> date,
    ffi.Pointer<ICU4XTime> time,
  ) createFromDateAndTime;

  final ResultICU4XDateTimeOrICU4XError Function(
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int nanosecond,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) createFromIsoInCalendar;

  final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) date;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) dayOfMonth;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) dayOfWeek;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) daysInMonth;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) daysInYear;

  final void Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) destroy;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) era;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) hour;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) minute;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) monthCode;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) monthsInYear;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) nanosecond;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) ordinalMonth;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) second;

  final ffi.Pointer<ICU4XTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) time;

  final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar;

  final ffi.Pointer<ICU4XIsoDateTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) toIso;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
    int first_weekday,
  ) weekOfMonth;

  final ResultICU4XWeekOfOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<ICU4XWeekCalculator> calculator,
  ) weekOfYear;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) yearInEra;
}
