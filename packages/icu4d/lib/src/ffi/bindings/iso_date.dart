// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _IsoDate {
  _IsoDate(this.dynamicLibrary)
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
            )>(
          'ICU4XIsoDate_create',
          isLeaf: true,
        ),
        toCalendar = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            ),
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XCalendar> calendar,
            )>(
          'ICU4XIsoDate_to_calendar',
          isLeaf: true,
        ),
        toAny = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            ffi.Pointer<ICU4XDate> Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_to_any',
          isLeaf: true,
        ),
        dayOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_day_of_month',
          isLeaf: true,
        ),
        dayOfWeek = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_day_of_week',
          isLeaf: true,
        ),
        weekOfMonth = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Int32 first_weekday,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
              int first_weekday,
            )>(
          'ICU4XIsoDate_week_of_month',
          isLeaf: true,
        ),
        weekOfYear = dynamicLibrary.lookupFunction<
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            ),
            ResultICU4XWeekOfOrICU4XError Function(
              ffi.Pointer<ICU4XIsoDate> self,
              ffi.Pointer<ICU4XWeekCalculator> calculator,
            )>(
          'ICU4XIsoDate_week_of_year',
          isLeaf: true,
        ),
        month = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_month',
          isLeaf: true,
        ),
        year = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_year',
          isLeaf: true,
        ),
        monthsInYear = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_months_in_year',
          isLeaf: true,
        ),
        daysInMonth = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_days_in_month',
          isLeaf: true,
        ),
        daysInYear = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            int Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_days_in_year',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XIsoDate> self,
            ),
            void Function(
              ffi.Pointer<ICU4XIsoDate> self,
            )>(
          'ICU4XIsoDate_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XIsoDateOrICU4XError Function(
    int year,
    int month,
    int day,
  ) create;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) dayOfMonth;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) dayOfWeek;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) daysInMonth;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) daysInYear;

  final void Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) month;

  final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) monthsInYear;

  final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) toAny;

  final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XIsoDate> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar;

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
  ) year;
}
