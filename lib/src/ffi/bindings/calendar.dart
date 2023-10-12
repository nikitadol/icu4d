// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Calendar {
  _Calendar(ffi.DynamicLibrary dynamicLibrary)
      : createForLocale = dynamicLibrary.lookupFunction<
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XCalendar_create_for_locale'),
        createForKind = dynamicLibrary.lookupFunction<
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Int32 kind,
            ),
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              int kind,
            )>('ICU4XCalendar_create_for_kind'),
        kind = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XCalendar> self,
            ),
            int Function(
              ffi.Pointer<ICU4XCalendar> self,
            )>('ICU4XCalendar_kind'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCalendar> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCalendar> self,
            )>('ICU4XCalendar_destroy');

  final ResultICU4XCalendarOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createForLocale;

  final ResultICU4XCalendarOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    int kind,
  ) createForKind;

  final int Function(
    ffi.Pointer<ICU4XCalendar> self,
  ) kind;

  final void Function(
    ffi.Pointer<ICU4XCalendar> self,
  ) destroy;
}
