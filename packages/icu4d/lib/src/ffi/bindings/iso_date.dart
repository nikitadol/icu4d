// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _IsoDate {
  _IsoDate(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XIsoDateOrICU4XError Function(
    int year,
    int month,
    int day,
  ) create = dynamicLibrary.lookupFunction<
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
  );

  late final ffi.Pointer<ICU4XIsoDate> Function() createForUnixEpoch =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XIsoDate> Function(),
          ffi.Pointer<ICU4XIsoDate> Function()>(
    'ICU4XIsoDate_create_for_unix_epoch',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) dayOfMonth = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_day_of_month',
    isLeaf: true,
  );

// C args:
// - ICU4XIsoDate*
//
// C return:
// - ICU4XIsoWeekday
  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) dayOfWeek = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_day_of_week',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) daysInMonth = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_days_in_month',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) daysInYear = dynamicLibrary.lookupFunction<
      ffi.Uint16 Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_days_in_year',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XIsoDate> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XIsoDate> self,
          )>>('ICU4XIsoDate_destroy');

  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) month = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_month',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) monthsInYear = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_months_in_year',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) toAny = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XDate> Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      ffi.Pointer<ICU4XDate> Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_to_any',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XDate> Function(
    ffi.Pointer<ICU4XIsoDate> self,
    ffi.Pointer<ICU4XCalendar> calendar,
  ) toCalendar = dynamicLibrary.lookupFunction<
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
  );

// C args:
// - ICU4XIsoDate*
// - ICU4XIsoWeekday
//
// C return:
// - Uint32
  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
    int first_weekday,
  ) weekOfMonth = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XWeekOfOrICU4XError Function(
    ffi.Pointer<ICU4XIsoDate> self,
    ffi.Pointer<ICU4XWeekCalculator> calculator,
  ) weekOfYear = dynamicLibrary.lookupFunction<
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
  );

  late final int Function(
    ffi.Pointer<ICU4XIsoDate> self,
  ) year = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XIsoDate> self,
      ),
      int Function(
        ffi.Pointer<ICU4XIsoDate> self,
      )>(
    'ICU4XIsoDate_year',
    isLeaf: true,
  );
}
