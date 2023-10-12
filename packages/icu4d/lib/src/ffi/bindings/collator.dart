// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Collator {
  _Collator(this.dynamicLibrary)
      : createV1 = dynamicLibrary.lookupFunction<
            ResultICU4XCollatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ICU4XCollatorOptionsV1 options,
            ),
            ResultICU4XCollatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ICU4XCollatorOptionsV1 options,
            )>(
          'ICU4XCollator_create_v1',
          isLeaf: true,
        ),
        compare = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XCollator> self,
              ffi.Pointer<ffi.Uint8> left_data,
              ffi.Size left_len,
              ffi.Pointer<ffi.Uint8> right_data,
              ffi.Size right_len,
            ),
            int Function(
              ffi.Pointer<ICU4XCollator> self,
              ffi.Pointer<ffi.Uint8> left_data,
              int left_len,
              ffi.Pointer<ffi.Uint8> right_data,
              int right_len,
            )>(
          'ICU4XCollator_compare',
          isLeaf: true,
        ),
        compareValidUtf8 = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XCollator> self,
              ffi.Pointer<ffi.Uint8> left_data,
              ffi.Size left_len,
              ffi.Pointer<ffi.Uint8> right_data,
              ffi.Size right_len,
            ),
            int Function(
              ffi.Pointer<ICU4XCollator> self,
              ffi.Pointer<ffi.Uint8> left_data,
              int left_len,
              ffi.Pointer<ffi.Uint8> right_data,
              int right_len,
            )>(
          'ICU4XCollator_compare_valid_utf8',
          isLeaf: true,
        ),
        compareUtf16 = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XCollator> self,
              ffi.Pointer<ffi.Uint16> left_data,
              ffi.Size left_len,
              ffi.Pointer<ffi.Uint16> right_data,
              ffi.Size right_len,
            ),
            int Function(
              ffi.Pointer<ICU4XCollator> self,
              ffi.Pointer<ffi.Uint16> left_data,
              int left_len,
              ffi.Pointer<ffi.Uint16> right_data,
              int right_len,
            )>(
          'ICU4XCollator_compare_utf16',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XCollator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XCollator> self,
            )>(
          'ICU4XCollator_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final int Function(
    ffi.Pointer<ICU4XCollator> self,
    ffi.Pointer<ffi.Uint8> left_data,
    int left_len,
    ffi.Pointer<ffi.Uint8> right_data,
    int right_len,
  ) compare;

  final int Function(
    ffi.Pointer<ICU4XCollator> self,
    ffi.Pointer<ffi.Uint16> left_data,
    int left_len,
    ffi.Pointer<ffi.Uint16> right_data,
    int right_len,
  ) compareUtf16;

  final int Function(
    ffi.Pointer<ICU4XCollator> self,
    ffi.Pointer<ffi.Uint8> left_data,
    int left_len,
    ffi.Pointer<ffi.Uint8> right_data,
    int right_len,
  ) compareValidUtf8;

  final ResultICU4XCollatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    ICU4XCollatorOptionsV1 options,
  ) createV1;

  final void Function(
    ffi.Pointer<ICU4XCollator> self,
  ) destroy;
}
