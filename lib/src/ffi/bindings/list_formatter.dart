// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _ListFormatter {
  _ListFormatter(ffi.DynamicLibrary dynamicLibrary)
      : createAndWithLength = dynamicLibrary.lookupFunction<
            ResultICU4XListFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 length,
            ),
            ResultICU4XListFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int length,
            )>('ICU4XListFormatter_create_and_with_length'),
        createOrWithLength = dynamicLibrary.lookupFunction<
            ResultICU4XListFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 length,
            ),
            ResultICU4XListFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int length,
            )>('ICU4XListFormatter_create_or_with_length'),
        createUnitWithLength = dynamicLibrary.lookupFunction<
            ResultICU4XListFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ffi.Int32 length,
            ),
            ResultICU4XListFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              int length,
            )>('ICU4XListFormatter_create_unit_with_length'),
        format = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XListFormatter> self,
              ffi.Pointer<ICU4XList> list,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XListFormatter> self,
              ffi.Pointer<ICU4XList> list,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XListFormatter_format'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XListFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XListFormatter> self,
            )>('ICU4XListFormatter_destroy');

  final ResultICU4XListFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createAndWithLength;

  final ResultICU4XListFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createOrWithLength;

  final ResultICU4XListFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    int length,
  ) createUnitWithLength;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XListFormatter> self,
    ffi.Pointer<ICU4XList> list,
    ffi.Pointer<DiplomatWriteable> write,
  ) format;

  final void Function(
    ffi.Pointer<ICU4XListFormatter> self,
  ) destroy;
}
