// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _FixedDecimalFormatter {
  _FixedDecimalFormatter(ffi.DynamicLibrary dynamicLibrary)
      : createWithGroupingStrategy = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 grouping_strategy,
            ),
            ResultICU4XFixedDecimalFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int grouping_strategy,
            )>('ICU4XFixedDecimalFormatter_create_with_grouping_strategy'),
        createWithDecimalSymbolsV1 = dynamicLibrary.lookupFunction<
            ResultICU4XFixedDecimalFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataStruct> data_struct,
              ffi.Int32 grouping_strategy,
            ),
            ResultICU4XFixedDecimalFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataStruct> data_struct,
              int grouping_strategy,
            )>('ICU4XFixedDecimalFormatter_create_with_decimal_symbols_v1'),
        format = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XFixedDecimalFormatter> self,
              ffi.Pointer<ICU4XFixedDecimal> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XFixedDecimalFormatter> self,
              ffi.Pointer<ICU4XFixedDecimal> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XFixedDecimalFormatter_format'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XFixedDecimalFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XFixedDecimalFormatter> self,
            )>('ICU4XFixedDecimalFormatter_destroy');

  final ResultICU4XFixedDecimalFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int grouping_strategy,
  ) createWithGroupingStrategy;

  final ResultICU4XFixedDecimalFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataStruct> data_struct,
    int grouping_strategy,
  ) createWithDecimalSymbolsV1;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XFixedDecimalFormatter> self,
    ffi.Pointer<ICU4XFixedDecimal> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) format;

  final void Function(
    ffi.Pointer<ICU4XFixedDecimalFormatter> self,
  ) destroy;
}