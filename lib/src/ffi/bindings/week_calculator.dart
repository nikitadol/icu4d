// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WeekCalculator {
  _WeekCalculator(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
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
        ),
        createFromFirstDayOfWeekAndMinWeekDays = dynamicLibrary.lookupFunction<
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
        ),
        firstWeekday = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            )>(
          'ICU4XWeekCalculator_first_weekday',
          isLeaf: true,
        ),
        minWeekDays = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            )>(
          'ICU4XWeekCalculator_min_week_days',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            )>(
          'ICU4XWeekCalculator_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XWeekCalculatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) create;

  final ffi.Pointer<ICU4XWeekCalculator> Function(
    int first_weekday,
    int min_week_days,
  ) createFromFirstDayOfWeekAndMinWeekDays;

  final void Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) firstWeekday;

  final int Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) minWeekDays;
}
