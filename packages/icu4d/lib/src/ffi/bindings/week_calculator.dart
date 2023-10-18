// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _WeekCalculator {
  _WeekCalculator(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XWeekCalculatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XWeekCalculatorOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XWeekCalculatorOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XWeekCalculator_create',
    isLeaf: true,
  );

// C args:
// - ICU4XIsoWeekday
// - Uint8
//
// C return:
// - ICU4XWeekCalculator*
  late final ffi.Pointer<ICU4XWeekCalculator> Function(
    int first_weekday,
    int min_week_days,
  ) createFromFirstDayOfWeekAndMinWeekDays = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XWeekCalculator> Function(
        ffi.Int32 first_weekday,
        ffi.Uint8 min_week_days,
      ),
      ffi.Pointer<ICU4XWeekCalculator> Function(
        int first_weekday,
        int min_week_days,
      )>(
    'ICU4XWeekCalculator_create_from_first_day_of_week_and_min_week_days',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XWeekCalculator> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XWeekCalculator> self,
          )>>('ICU4XWeekCalculator_destroy');

// C args:
// - ICU4XWeekCalculator*
//
// C return:
// - ICU4XIsoWeekday
  late final int Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) firstWeekday = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XWeekCalculator> self,
      ),
      int Function(
        ffi.Pointer<ICU4XWeekCalculator> self,
      )>(
    'ICU4XWeekCalculator_first_weekday',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) minWeekDays = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XWeekCalculator> self,
      ),
      int Function(
        ffi.Pointer<ICU4XWeekCalculator> self,
      )>(
    'ICU4XWeekCalculator_min_week_days',
    isLeaf: true,
  );
}
