// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _IsoDate {
  _IsoDate(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XIsoDateOrICU4XError Function(
              ffi.Int32 year,
              ffi.Uint8 month,
              ffi.Uint8 day,
            ),
            ResultICU4XIsoDateOrICU4XError Function(
              int year,
              int month,
              int day,
            )>('ICU4XIsoDate_create'),
        toCalendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>('ICU4XIsoDate_to_calendar'),
        toAny = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_to_any'),
        dayOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_day_of_month'),
        dayOfWeek = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_day_of_week'),
        weekOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Int32 first_weekday,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
              int first_weekday,
            )>('ICU4XIsoDate_week_of_month'),
        weekOfYear = dynamicLibrary.lookupFunction<
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            ),
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            )>('ICU4XIsoDate_week_of_year'),
        month = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_month'),
        year = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_year'),
        monthsInYear = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_months_in_year'),
        daysInMonth = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_days_in_month'),
        daysInYear = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_days_in_year'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            void Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>('ICU4XIsoDate_destroy');

  final ResultICU4XIsoDateOrICU4XError Function(
    int year,
    int month,
    int day,
  ) create;

  final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XIsoDate> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar;

  final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) toAny;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) dayOfMonth;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) dayOfWeek;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
    int first_weekday,
  ) weekOfMonth;

  final ResultICU4XWeekOfOrICU4XError Function(
    ffi.Pointer<ICU4XIsoDate> self,
    ffi.Pointer<ICU4XWeekCalculator> calculator,
  ) weekOfYear;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) month;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) year;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) monthsInYear;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) daysInMonth;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) daysInYear;

  final void Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) destroy;
}
