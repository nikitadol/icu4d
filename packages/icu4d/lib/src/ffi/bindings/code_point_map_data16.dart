// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CodePointMapData16 {
  _CodePointMapData16(this.dynamicLibrary)
      : get = dynamicLibrary.lookupFunction<
            ffi.Uint16 Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              ffi.Uint32 cp,
            ),
            int Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              int cp,
            )>(
          'ICU4XCodePointMapData16_get',
          isLeaf: true,
        ),
        get32 = dynamicLibrary.lookupFunction<
            ffi.Uint16 Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              ffi.Uint32 cp,
            ),
            int Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              int cp,
            )>(
          'ICU4XCodePointMapData16_get32',
          isLeaf: true,
        ),
        iterRangesForValue = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              ffi.Uint16 value,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              int value,
            )>(
          'ICU4XCodePointMapData16_iter_ranges_for_value',
          isLeaf: true,
        ),
        iterRangesForValueComplemented = dynamicLibrary.lookupFunction<
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              ffi.Uint16 value,
            ),
            ffi.Pointer<CodePointRangeIterator> Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              int value,
            )>(
          'ICU4XCodePointMapData16_iter_ranges_for_value_complemented',
          isLeaf: true,
        ),
        getSetForValue = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XCodePointSetData> Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              ffi.Uint16 value,
            ),
            ffi.Pointer<ICU4XCodePointSetData> Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
              int value,
            )>(
          'ICU4XCodePointMapData16_get_set_for_value',
          isLeaf: true,
        ),
        loadScript = dynamicLibrary.lookupFunction<
            ResultICU4XCodePointMapData16OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XCodePointMapData16OrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XCodePointMapData16_load_script',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCodePointMapData16> self,
            )>(
          'ICU4XCodePointMapData16_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XCodePointMapData16> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XCodePointMapData16> self,
    int cp,
  ) get;

  final int Function(
    ffi.Pointer<ICU4XCodePointMapData16> self,
    int cp,
  ) get32;

  final ffi.Pointer<ICU4XCodePointSetData> Function(
    ffi.Pointer<ICU4XCodePointMapData16> self,
    int value,
  ) getSetForValue;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData16> self,
    int value,
  ) iterRangesForValue;

  final ffi.Pointer<CodePointRangeIterator> Function(
    ffi.Pointer<ICU4XCodePointMapData16> self,
    int value,
  ) iterRangesForValueComplemented;

  final ResultICU4XCodePointMapData16OrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadScript;
}
