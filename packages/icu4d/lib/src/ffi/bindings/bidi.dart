// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _Bidi {
  _Bidi(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XBidiOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XBidiOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XBidiOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XBidi_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XBidi> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XBidi> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XBidi> self,
          )>>('ICU4XBidi_destroy');

  late final ffi.Pointer<ICU4XBidiInfo> Function(
    ffi.Pointer<ICU4XBidi> self,
    ffi.Pointer<ffi.Uint8> text_data,
    int text_len,
    int default_level,
  ) forText = dynamicLibrary.lookupFunction<
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
  );

  late final bool Function(
    int level,
  ) levelIsLtr = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Uint8 level,
      ),
      bool Function(
        int level,
      )>(
    'ICU4XBidi_level_is_ltr',
    isLeaf: true,
  );

  late final bool Function(
    int level,
  ) levelIsRtl = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Uint8 level,
      ),
      bool Function(
        int level,
      )>(
    'ICU4XBidi_level_is_rtl',
    isLeaf: true,
  );

  late final int Function() levelLtr =
      dynamicLibrary.lookupFunction<ffi.Uint8 Function(), int Function()>(
    'ICU4XBidi_level_ltr',
    isLeaf: true,
  );

  late final int Function() levelRtl =
      dynamicLibrary.lookupFunction<ffi.Uint8 Function(), int Function()>(
    'ICU4XBidi_level_rtl',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XReorderedIndexMap> Function(
    ffi.Pointer<ICU4XBidi> self,
    ffi.Pointer<ffi.Uint8> levels_data,
    int levels_len,
  ) reorderVisual = dynamicLibrary.lookupFunction<
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
  );
}
