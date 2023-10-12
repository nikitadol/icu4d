// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Date {
  _Date(ffi.DynamicLibrary dynamicLibrary)
      : createFromIsoInCalendar = dynamicLibrary.lookupFunction<
            ResultICU4XDateOrICU4XError Function(
              ffi.Int32 year,
              ffi.Uint8 month,
              ffi.Uint8 day,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ResultICU4XDateOrICU4XError Function(
              int year,
              int month,
              int day,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>('ICU4XDate_create_from_iso_in_calendar'),
        createFromCodesInCalendar = dynamicLibrary.lookupFunction<
            ResultICU4XDateOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> era_code_data,
              ffi.Size era_code_len,
              ffi.Int32 year,
              ffi.Pointer<ffi.Uint8> month_code_data,
              ffi.Size month_code_len,
              ffi.Uint8 day,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ResultICU4XDateOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> era_code_data,
              int era_code_len,
              int year,
              ffi.Pointer<ffi.Uint8> month_code_data,
              int month_code_len,
              int day,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>('ICU4XDate_create_from_codes_in_calendar'),
        toCalendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>('ICU4XDate_to_calendar'),
        toIso = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XIsoDate> Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            ffi.Pointer<ICU4XIsoDate> Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_to_iso'),
        dayOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_day_of_month'),
        dayOfWeek = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_day_of_week'),
        weekOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Int32 first_weekday,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
              int first_weekday,
            )>('ICU4XDate_week_of_month'),
        weekOfYear = dynamicLibrary.lookupFunction<
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            ),
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            )>('ICU4XDate_week_of_year'),
        ordinalMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_ordinal_month'),
        monthCode = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDate_month_code'),
        yearInEra = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_year_in_era'),
        era = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDate> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XDate_era'),
        monthsInYear = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_months_in_year'),
        daysInMonth = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_days_in_month'),
        daysInYear = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_days_in_year'),
        calendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCalendar> Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            ffi.Pointer<ICU4XCalendar> Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_calendar'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDate> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDate> self,
            )>('ICU4XDate_destroy');

  final ResultICU4XDateOrICU4XError Function(
    int year,
    int month,
    int day,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) createFromIsoInCalendar;

  final ResultICU4XDateOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> era_code_data,
    int era_code_len,
    int year,
    ffi.Pointer<ffi.Uint8> month_code_data,
    int month_code_len,
    int day,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) createFromCodesInCalendar;

  final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XDate> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar;

  final ffi.Pointer<ICU4XIsoDate> Function(
    ffi.Pointer<ICU4XDate> self,
  ) toIso;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
  ) dayOfMonth;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
  ) dayOfWeek;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
    int first_weekday,
  ) weekOfMonth;

  final ResultICU4XWeekOfOrICU4XError Function(
    ffi.Pointer<ICU4XDate> self,
    ffi.Pointer<ICU4XWeekCalculator> calculator,
  ) weekOfYear;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
  ) ordinalMonth;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDate> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) monthCode;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
  ) yearInEra;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDate> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) era;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
  ) monthsInYear;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
  ) daysInMonth;

  final int Function(
    ffi.Pointer<ICU4XDate> self,
  ) daysInYear;

  final ffi.Pointer<ICU4XCalendar> Function(
    ffi.Pointer<ICU4XDate> self,
  ) calendar;

  final void Function(
    ffi.Pointer<ICU4XDate> self,
  ) destroy;
}
