// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _DateTime {
  _DateTime(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ffi.Pointer<ICU4XCalendar> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) calendar = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XCalendar> Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      ffi.Pointer<ICU4XCalendar> Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_calendar',
    isLeaf: true,
  );

  late final ResultICU4XDateTimeOrICU4XError Function(
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
  ) createFromCodesInCalendar = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XDate> date,
    ffi.Pointer<ICU4XTime> time,
  ) createFromDateAndTime = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XDateTimeOrICU4XError Function(
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int nanosecond,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) createFromIsoInCalendar = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) date = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XDate> Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      ffi.Pointer<ICU4XDate> Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_date',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) dayOfMonth = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_day_of_month',
    isLeaf: true,
  );

// C args:
// - ICU4XDateTime*
//
// C return:
// - ICU4XIsoWeekday
  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) dayOfWeek = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_day_of_week',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) daysInMonth = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_days_in_month',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) daysInYear = dynamicLibrary.lookupFunction<
      ffi.Uint16 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_days_in_year',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDateTime> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDateTime> self,
          )>>('ICU4XDateTime_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) era = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) hour = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_hour',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) minute = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_minute',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) monthCode = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) monthsInYear = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_months_in_year',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) nanosecond = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_nanosecond',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) ordinalMonth = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_ordinal_month',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) second = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_second',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) time = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XTime> Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      ffi.Pointer<ICU4XTime> Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_time',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XDateTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XIsoDateTime> Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) toIso = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XIsoDateTime> Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      ffi.Pointer<ICU4XIsoDateTime> Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_to_iso',
    isLeaf: true,
  );

// C args:
// - ICU4XDateTime*
// - ICU4XIsoWeekday
//
// C return:
// - Uint32
  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
    int first_weekday,
  ) weekOfMonth = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XWeekOfOrICU4XError Function(
    ffi.Pointer<ICU4XDateTime> self,
    ffi.Pointer<ICU4XWeekCalculator> calculator,
  ) weekOfYear = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XDateTime> self,
  ) yearInEra = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XDateTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XDateTime> self,
      )>(
    'ICU4XDateTime_year_in_era',
    isLeaf: true,
  );
}
