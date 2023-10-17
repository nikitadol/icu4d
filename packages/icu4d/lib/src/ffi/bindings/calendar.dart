// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _Calendar {
  _Calendar(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XCalendarOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    int kind,
  ) createForKind = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XCalendarOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createForLocale = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XCalendar> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCalendar> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCalendar> self,
      )>(
    'ICU4XCalendar_destroy',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XCalendar> self,
  ) kind = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XCalendar> self,
      ),
      int Function(
        ffi.Pointer<ICU4XCalendar> self,
      )>(
    'ICU4XCalendar_kind',
    isLeaf: true,
  );
}
