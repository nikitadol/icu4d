// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _GregorianDateFormatter {
  _GregorianDateFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XDateLength]
  ///
  /// C return:
  /// - [ResultICU4XGregorianDateFormatterOrICU4XError]
  late final ResultICU4XGregorianDateFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createWithLength = dynamicLibrary.lookupFunction<
      ResultICU4XGregorianDateFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 length,
      ),
      ResultICU4XGregorianDateFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int length,
      )>(
    'ICU4XGregorianDateFormatter_create_with_length',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XGregorianDateFormatter> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XGregorianDateFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XGregorianDateFormatter> self,
          )>>('ICU4XGregorianDateFormatter_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XGregorianDateFormatter> self,
    ffi.Pointer<ICU4XIsoDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDate = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XGregorianDateFormatter> self,
        ffi.Pointer<ICU4XIsoDate> value,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XGregorianDateFormatter> self,
        ffi.Pointer<ICU4XIsoDate> value,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XGregorianDateFormatter_format_iso_date',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XGregorianDateFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XGregorianDateFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XGregorianDateFormatter> self,
        ffi.Pointer<ICU4XIsoDateTime> value,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XGregorianDateFormatter_format_iso_datetime',
    isLeaf: true,
  );
}
