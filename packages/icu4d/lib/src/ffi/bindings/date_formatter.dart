// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _DateFormatter {
  _DateFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

// C args:
// - ICU4XDataProvider*
// - ICU4XLocale*
// - ICU4XDateLength
//
// C return:
// - diplomat_result_box_ICU4XDateFormatter_ICU4XError
  late final ResultICU4XDateFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int date_length,
  ) createWithLength = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XDateFormatter> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDateFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XDateFormatter> self,
          )>>('ICU4XDateFormatter_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDate = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatDatetime = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XIsoDate> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDate = dynamicLibrary.lookupFunction<
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
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XDateFormatter> self,
    ffi.Pointer<ICU4XIsoDateTime> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatIsoDatetime = dynamicLibrary.lookupFunction<
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
  );
}
