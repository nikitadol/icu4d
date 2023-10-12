// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Calendar {
  _Calendar(this.dynamicLibrary)
      : createForLocale = dynamicLibrary.lookupFunction<
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>(
          'ICU4XCalendar_create_for_locale',
          isLeaf: true,
        ),
        createForKind = dynamicLibrary.lookupFunction<
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Int32 kind,
            ),
            ResultICU4XCalendarOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              int kind,
            )>(
          'ICU4XCalendar_create_for_kind',
          isLeaf: true,
        ),
        kind = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XCalendar> self,
            ),
            int Function(
              ffi.Pointer<ICU4XCalendar> self,
            )>(
          'ICU4XCalendar_kind',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCalendar> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCalendar> self,
            )>(
          'ICU4XCalendar_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XCalendarOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    int kind,
  ) createForKind;

  final ResultICU4XCalendarOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createForLocale;

  final void Function(
    ffi.Pointer<ICU4XCalendar> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XCalendar> self,
  ) kind;
}
