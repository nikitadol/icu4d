// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Bidi {
  _Bidi(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XBidiOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XBidiOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XBidi_create',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XBidi_for_text',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XBidi_reorder_visual',
          isLeaf: true,
        ),
        levelIsRtl = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Uint8 level,
            ),
            bool Function(
              int level,
            )>(
          'ICU4XBidi_level_is_rtl',
          isLeaf: true,
        ),
        levelIsLtr = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Uint8 level,
            ),
            bool Function(
              int level,
            )>(
          'ICU4XBidi_level_is_ltr',
          isLeaf: true,
        ),
        levelRtl =
            dynamicLibrary.lookupFunction<ffi.Uint8 Function(), int Function()>(
          'ICU4XBidi_level_rtl',
          isLeaf: true,
        ),
        levelLtr =
            dynamicLibrary.lookupFunction<ffi.Uint8 Function(), int Function()>(
          'ICU4XBidi_level_ltr',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XBidi> self,
            ),
            void Function(
              ffi.Pointer<ICU4XBidi> self,
            )>(
          'ICU4XBidi_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XBidiOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final void Function(
    ffi.Pointer<ICU4XBidi> self,
  ) destroy;

  final ffi.Pointer<ICU4XBidiInfo> Function(
    ffi.Pointer<ICU4XBidi> self,
    ffi.Pointer<ffi.Uint8> text_data,
    int text_len,
    int default_level,
  ) forText;

  final bool Function(
    int level,
  ) levelIsLtr;

  final bool Function(
    int level,
  ) levelIsRtl;

  final int Function() levelLtr;

  final int Function() levelRtl;

  final ffi.Pointer<ICU4XReorderedIndexMap> Function(
    ffi.Pointer<ICU4XBidi> self,
    ffi.Pointer<ffi.Uint8> levels_data,
    int levels_len,
  ) reorderVisual;
}
