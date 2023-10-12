// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WeekCalculator {
  _WeekCalculator(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XWeekCalculatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XWeekCalculatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XWeekCalculator_create'),
        createFromFirstDayOfWeekAndMinWeekDays = dynamicLibrary.lookupFunction<
                ffi.Pointer<ICU4XWeekCalculator> Function(
                  ffi.Int32 first_weekday,
                  ffi.Uint8 min_week_days,
                ),
                ffi.Pointer<ICU4XWeekCalculator> Function(
                  int first_weekday,
                  int min_week_days,
                )>(
            'ICU4XWeekCalculator_create_from_first_day_of_week_and_min_week_days'),
        firstWeekday = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            )>('ICU4XWeekCalculator_first_weekday'),
        minWeekDays = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            ),
            int Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            )>('ICU4XWeekCalculator_min_week_days'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWeekCalculator> self,
            )>('ICU4XWeekCalculator_destroy');

  final ResultICU4XWeekCalculatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) create;

  final ffi.Pointer<ICU4XWeekCalculator> Function(
    int first_weekday,
    int min_week_days,
  ) createFromFirstDayOfWeekAndMinWeekDays;

  final int Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) firstWeekday;

  final int Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) minWeekDays;

  final void Function(
    ffi.Pointer<ICU4XWeekCalculator> self,
  ) destroy;
}
