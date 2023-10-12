// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DateTime {
  _DateTime(ffi.DynamicLibrary dynamicLibrary)
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
            )>('ICU4XDateTime_create_from_iso_in_calendar'),
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
            )>('ICU4XDateTime_create_from_codes_in_calendar'),
        createFromDateAndTime = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDate> date,
              ffi.Pointer<ICU4XTime> time,
            ),
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDate> date,
              ffi.Pointer<ICU4XTime> time,
            )>('ICU4XDateTime_create_from_date_and_time'),
        date = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_date'),
        time = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_time'),
        toIso = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XIsoDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XIsoDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_to_iso'),
        toCalendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ffi.Pointer<ICU4XDateTime> Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>('ICU4XDateTime_to_calendar'),
        hour = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_hour'),
        minute = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_minute'),
        second = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_second'),
        nanosecond = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_nanosecond'),
        dayOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_day_of_month'),
        dayOfWeek = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_day_of_week'),
        weekOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Int32 first_weekday,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
              int first_weekday,
            )>('ICU4XDateTime_week_of_month'),
        weekOfYear = dynamicLibrary.lookupFunction<
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            ),
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            )>('ICU4XDateTime_week_of_year'),
        ordinalMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_ordinal_month'),
        monthCode = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateTime_month_code'),
        yearInEra = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_year_in_era'),
        era = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateTime> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDateTime_era'),
        monthsInYear = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_months_in_year'),
        daysInMonth = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_days_in_month'),
        daysInYear = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_days_in_year'),
        calendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCalendar> Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            ffi.Pointer<ICU4XCalendar> Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_calendar'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDateTime> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDateTime> self,
            )>('ICU4XDateTime_destroy');

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

  final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) date;

  final ffi.Pointer<ICU4XTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) time;

  final ffi.Pointer<ICU4XIsoDateTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) toIso;

  final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) hour;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) minute;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) second;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) nanosecond;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) dayOfMonth;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) dayOfWeek;

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
  ) ordinalMonth;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) monthCode;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) yearInEra;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) era;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) monthsInYear;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) daysInMonth;

  final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) daysInYear;

  final ffi.Pointer<ICU4XCalendar> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) calendar;

  final void Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) destroy;
}
