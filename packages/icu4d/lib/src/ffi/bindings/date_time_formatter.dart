// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _DateTimeFormatter {
  _DateTimeFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XDateTimeFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
    int time_length,
  ) createWithLengths = dynamicLibrary.lookupFunction<
      ResultICU4XDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 date_length,
        ffi.Int32 time_length,
      ),
      ResultICU4XDateTimeFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int date_length,
        int time_length,
      )>(
    'ICU4XDateTimeFormatter_create_with_lengths',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XDateTimeFormatter> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDateTimeFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDateTimeFormatter> self,
          )>>('ICU4XDateTimeFormatter_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTimeFormatter> self,
    ffi.Pointer<ICU4XDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDatetime = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XDateTimeFormatter> self,
        ffi.Pointer<ICU4XDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XDateTimeFormatter> self,
        ffi.Pointer<ICU4XDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XDateTimeFormatter_format_datetime',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateTimeFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XDateTimeFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XDateTimeFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XDateTimeFormatter_format_iso_datetime',
    isLeaf: true,
  );
}
