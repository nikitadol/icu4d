// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _TitlecaseMapper {
  _TitlecaseMapper(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XTitlecaseMapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XTitlecaseMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XTitlecaseMapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XTitlecaseMapper_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XTitlecaseMapper> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XTitlecaseMapper> self,
      ),
      void Function(
        ffi.Pointer<ICU4XTitlecaseMapper> self,
      )>(
    'ICU4XTitlecaseMapper_destroy',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTitlecaseMapper> self,
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
    ffi.Pointer<ICU4XLocale> locale,
    ICU4XTitlecaseOptionsV1 options,
    ffi.Pointer<DiplomatWriteable> write,
  ) titlecaseSegmentV1 = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XTitlecaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ICU4XTitlecaseOptionsV1 options,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XTitlecaseMapper> self,
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
        ffi.Pointer<ICU4XLocale> locale,
        ICU4XTitlecaseOptionsV1 options,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XTitlecaseMapper_titlecase_segment_v1',
    isLeaf: true,
  );
}
