// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _FixedDecimalFormatter {
  _FixedDecimalFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  /// C args:
  /// - [ICU4XDataStruct]*
  /// - [ICU4XFixedDecimalGroupingStrategy]
  ///
  /// C return:
  /// - [ResultICU4XFixedDecimalFormatterOrICU4XError]
  late final ResultICU4XFixedDecimalFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataStruct> data_struct,
    int grouping_strategy,
  ) createWithDecimalSymbolsV1 = dynamicLibrary.lookupFunction<
      ResultICU4XFixedDecimalFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataStruct> data_struct,
        ffi.Int32 grouping_strategy,
      ),
      ResultICU4XFixedDecimalFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataStruct> data_struct,
        int grouping_strategy,
      )>(
    'ICU4XFixedDecimalFormatter_create_with_decimal_symbols_v1',
    isLeaf: true,
  );

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XFixedDecimalGroupingStrategy]
  ///
  /// C return:
  /// - [ResultICU4XFixedDecimalFormatterOrICU4XError]
  late final ResultICU4XFixedDecimalFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int grouping_strategy,
  ) createWithGroupingStrategy = dynamicLibrary.lookupFunction<
      ResultICU4XFixedDecimalFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 grouping_strategy,
      ),
      ResultICU4XFixedDecimalFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int grouping_strategy,
      )>(
    'ICU4XFixedDecimalFormatter_create_with_grouping_strategy',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XFixedDecimalFormatter> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XFixedDecimalFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XFixedDecimalFormatter> self,
          )>>('ICU4XFixedDecimalFormatter_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XFixedDecimalFormatter> self,
    ffi.Pointer<ICU4XFixedDecimal> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) format = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XFixedDecimalFormatter> self,
        ffi.Pointer<ICU4XFixedDecimal> value,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XFixedDecimalFormatter> self,
        ffi.Pointer<ICU4XFixedDecimal> value,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XFixedDecimalFormatter_format',
    isLeaf: true,
  );
}
