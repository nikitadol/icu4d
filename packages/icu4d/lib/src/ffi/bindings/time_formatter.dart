// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _TimeFormatter {
  _TimeFormatter(this.dynamicLibrary)
      : createWithLength = dynamicLibrary.lookupFunction<
            ResultICU4XTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 length,
            ),
            ResultICU4XTimeFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int length,
            )>(
          'ICU4XTimeFormatter_create_with_length',
          isLeaf: true,
        ),
        formatTime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
              ffi.Pointer<ICU4XTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
              ffi.Pointer<ICU4XTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XTimeFormatter_format_time',
          isLeaf: true,
        ),
        formatDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
              ffi.Pointer<ICU4XDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XTimeFormatter_format_datetime',
          isLeaf: true,
        ),
        formatIsoDatetime = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
              ffi.Pointer<ICU4XIsoDateTime> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XTimeFormatter_format_iso_datetime',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XTimeFormatter> self,
            )>(
          'ICU4XTimeFormatter_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createWithLength;

  final void Function(
    ffi.Pointer<ICU4XTimeFormatter> self,
  ) destroy;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeFormatter> self,
    ffi.Pointer<ICU4XDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDatetime;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeFormatter> self,
    ffi.Pointer<ICU4XTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatTime;
}
