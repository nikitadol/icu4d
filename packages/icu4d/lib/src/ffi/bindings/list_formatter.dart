// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _ListFormatter {
  _ListFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XListLength]
  ///
  /// C return:
  /// - [ResultICU4XListFormatterOrICU4XError]
  late final ResultICU4XListFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createAndWithLength = dynamicLibrary.lookupFunction<
      ResultICU4XListFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 length,
      ),
      ResultICU4XListFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int length,
      )>(
    'ICU4XListFormatter_create_and_with_length',
    isLeaf: true,
  );

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XListLength]
  ///
  /// C return:
  /// - [ResultICU4XListFormatterOrICU4XError]
  late final ResultICU4XListFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createOrWithLength = dynamicLibrary.lookupFunction<
      ResultICU4XListFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 length,
      ),
      ResultICU4XListFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int length,
      )>(
    'ICU4XListFormatter_create_or_with_length',
    isLeaf: true,
  );

  /// C args:
  /// - [ICU4XDataProvider]*
  /// - [ICU4XLocale]*
  /// - [ICU4XListLength]
  ///
  /// C return:
  /// - [ResultICU4XListFormatterOrICU4XError]
  late final ResultICU4XListFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createUnitWithLength = dynamicLibrary.lookupFunction<
      ResultICU4XListFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Int32 length,
      ),
      ResultICU4XListFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        int length,
      )>(
    'ICU4XListFormatter_create_unit_with_length',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XListFormatter> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XListFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XListFormatter> self,
          )>>('ICU4XListFormatter_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XListFormatter> self,
    ffi.Pointer<ICU4XList> list,
    ffi.Pointer<DiplomatWriteable> write,
  ) format = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XListFormatter> self,
        ffi.Pointer<ICU4XList> list,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XListFormatter> self,
        ffi.Pointer<ICU4XList> list,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XListFormatter_format',
    isLeaf: true,
  );
}
