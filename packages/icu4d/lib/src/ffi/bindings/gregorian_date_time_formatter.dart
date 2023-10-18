// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _GregorianDateTimeFormatter {
  _GregorianDateTimeFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XDateLength]
  /// - [ICU4XTimeLength]
  ///
  /// C return:
  /// - [ResultICU4XGregorianDateTimeFormatterOrICU4XError]
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
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XGregorianDateTimeFormatter> self,
          )>>('ICU4XGregorianDateTimeFormatter_destroy');

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
