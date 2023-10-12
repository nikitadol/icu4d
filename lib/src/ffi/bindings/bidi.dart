// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Bidi {
  _Bidi(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XBidiOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XBidiOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XBidi_create'),
        forText = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XBidiInfo> Function(
              ffi.Pointer<ICU4XBidi> self,
              ffi.Pointer<ffi.Uint8> text_data,
              ffi.Size text_len,
              ffi.Uint8 default_level,
            ),
            ffi.Pointer<ICU4XBidiInfo> Function(
              ffi.Pointer<ICU4XBidi> self,
              ffi.Pointer<ffi.Uint8> text_data,
              int text_len,
              int default_level,
            )>('ICU4XBidi_for_text'),
        reorderVisual = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XReorderedIndexMap> Function(
              ffi.Pointer<ICU4XBidi> self,
              ffi.Pointer<ffi.Uint8> levels_data,
              ffi.Size levels_len,
            ),
            ffi.Pointer<ICU4XReorderedIndexMap> Function(
              ffi.Pointer<ICU4XBidi> self,
              ffi.Pointer<ffi.Uint8> levels_data,
              int levels_len,
            )>('ICU4XBidi_reorder_visual'),
        levelIsRtl = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Uint8 level,
            ),
            bool Function(
              int level,
            )>('ICU4XBidi_level_is_rtl'),
        levelIsLtr = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Uint8 level,
            ),
            bool Function(
              int level,
            )>('ICU4XBidi_level_is_ltr'),
        levelRtl =
            dynamicLibrary.lookupFunction<ffi.Uint8 Function(), int Function()>(
                'ICU4XBidi_level_rtl'),
        levelLtr =
            dynamicLibrary.lookupFunction<ffi.Uint8 Function(), int Function()>(
                'ICU4XBidi_level_ltr'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XBidi> self,
            ),
            void Function(
              ffi.Pointer<ICU4XBidi> self,
            )>('ICU4XBidi_destroy');

  final ResultICU4XBidiOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final ffi.Pointer<ICU4XBidiInfo> Function(
    ffi.Pointer<ICU4XBidi> self,
    ffi.Pointer<ffi.Uint8> text_data,
    int text_len,
    int default_level,
  ) forText;

  final ffi.Pointer<ICU4XReorderedIndexMap> Function(
    ffi.Pointer<ICU4XBidi> self,
    ffi.Pointer<ffi.Uint8> levels_data,
    int levels_len,
  ) reorderVisual;

  final bool Function(
    int level,
  ) levelIsRtl;

  final bool Function(
    int level,
  ) levelIsLtr;

  final int Function() levelRtl;

  final int Function() levelLtr;

  final void Function(
    ffi.Pointer<ICU4XBidi> self,
  ) destroy;
}
