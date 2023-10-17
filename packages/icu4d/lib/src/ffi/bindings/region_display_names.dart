// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _RegionDisplayNames {
  _RegionDisplayNames(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XRegionDisplayNames> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XRegionDisplayNames> self,
      ),
      void Function(
        ffi.Pointer<ICU4XRegionDisplayNames> self,
      )>(
    'ICU4XRegionDisplayNames_destroy',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XRegionDisplayNames> self,
    ffi.Pointer<ffi.Uint8> region_data,
    int region_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) of = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XRegionDisplayNames> self,
        ffi.Pointer<ffi.Uint8> region_data,
        ffi.Size region_len,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XRegionDisplayNames> self,
        ffi.Pointer<ffi.Uint8> region_data,
        int region_len,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XRegionDisplayNames_of',
    isLeaf: true,
  );

  late final ResultICU4XRegionDisplayNamesOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) tryNew = dynamicLibrary.lookupFunction<
      ResultICU4XRegionDisplayNamesOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XRegionDisplayNamesOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XRegionDisplayNames_try_new',
    isLeaf: true,
  );
}
