// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Bcp47ToIanaMapper {
  _Bcp47ToIanaMapper(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XBcp47ToIanaMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XBcp47ToIanaMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XBcp47ToIanaMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XBcp47ToIanaMapper_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XBcp47ToIanaMapper> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XBcp47ToIanaMapper> self,
      ),
      void Function(
        ffi.Pointer<ICU4XBcp47ToIanaMapper> self,
      )>(
    'ICU4XBcp47ToIanaMapper_destroy',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XBcp47ToIanaMapper> self,
    ffi.Pointer<ffi.Uint8> value_data,
    int value_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) get = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XBcp47ToIanaMapper> self,
        ffi.Pointer<ffi.Uint8> value_data,
        ffi.Size value_len,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XBcp47ToIanaMapper> self,
        ffi.Pointer<ffi.Uint8> value_data,
        int value_len,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XBcp47ToIanaMapper_get',
    isLeaf: true,
  );
}
