// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _DateFormatter {
  _DateFormatter(this.dynamicLibrary)
      : createWithLength = dynamicLibrary.lookupFunction<
            ResultICU4XDateFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 date_length,
            ),
            ResultICU4XDateFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int date_length,
            )>(
          'ICU4XDateFormatter_create_with_length',
          isLeaf: true,
        ),
        formatDate = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XDateFormatter_format_date',
          isLeaf: true,
        ),
        formatIsoDate = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDate> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XDateFormatter_format_iso_date',
          isLeaf: true,
        ),
        formatDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XDateFormatter_format_datetime',
          isLeaf: true,
        ),
        formatIsoDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XDateFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XDateFormatter_format_iso_datetime',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XDateFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XDateFormatter> self,
            )>(
          'ICU4XDateFormatter_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XDateFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
  ) createWithLength;

  final void Function(
    ffi.Pointer<ICU4XDateFormatter> self,
  ) destroy;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDate;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDatetime;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XIsoDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDate;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime;
}
