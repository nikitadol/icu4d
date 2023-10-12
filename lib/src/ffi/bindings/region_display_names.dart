// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _RegionDisplayNames {
  _RegionDisplayNames(ffi.DynamicLibrary dynamicLibrary)
      : tryNewUnstable = dynamicLibrary.lookupFunction<
            ResultICU4XRegionDisplayNamesOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XRegionDisplayNamesOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XRegionDisplayNames_try_new_unstable'),
        of = dynamicLibrary.lookupFunction<
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
            )>('ICU4XRegionDisplayNames_of'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XRegionDisplayNames> self,
            ),
            void Function(
              ffi.Pointer<ICU4XRegionDisplayNames> self,
            )>('ICU4XRegionDisplayNames_destroy');

  final ResultICU4XRegionDisplayNamesOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) tryNewUnstable;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XRegionDisplayNames> self,
    ffi.Pointer<ffi.Uint8> region_data,
    int region_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) of;

  final void Function(
    ffi.Pointer<ICU4XRegionDisplayNames> self,
  ) destroy;
}
