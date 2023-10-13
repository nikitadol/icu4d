// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _GregorianDateTimeFormatter {
  _GregorianDateTimeFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XGregorianDateTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
    int time_length,
  ) createWithLengths = dynamicLibrary.lookupFunction<
      ResultICU4XGregorianDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 date_length,
        ffi.Int32 time_length,
      ),
      ResultICU4XGregorianDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int date_length,
        int time_length,
      )>(
    'ICU4XGregorianDateTimeFormatter_create_with_lengths',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
      ),
      void Function(
        ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
      )>(
    'ICU4XGregorianDateTimeFormatter_destroy',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XGregorianDateTimeFormatter_format_iso_datetime',
    isLeaf: true,
  );
}
