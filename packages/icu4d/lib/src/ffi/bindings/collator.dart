// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _Collator {
  _Collator(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  /// C args:
  /// - [ICU4XCollator]*
  /// - [ffi.Uint8]*
  /// - [ffi.Size]
  /// - [ffi.Uint8]*
  /// - [ffi.Size]
  ///
  /// C return:
  /// - [ICU4XOrdering]
  late final int Function(
    ffi.Pointer<ICU4XCollator> self,
    ffi.Pointer<ffi.Uint8> left_data,
    int left_len,
    ffi.Pointer<ffi.Uint8> right_data,
    int right_len,
  ) compare = dynamicLibrary.lookupFunction<
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
  );

  /// C args:
  /// - [ICU4XCollator]*
  /// - [ffi.Uint16]*
  /// - [ffi.Size]
  /// - [ffi.Uint16]*
  /// - [ffi.Size]
  ///
  /// C return:
  /// - [ICU4XOrdering]
  late final int Function(
    ffi.Pointer<ICU4XCollator> self,
    ffi.Pointer<ffi.Uint16> left_data,
    int left_len,
    ffi.Pointer<ffi.Uint16> right_data,
    int right_len,
  ) compareUtf16 = dynamicLibrary.lookupFunction<
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
  );

  /// C args:
  /// - [ICU4XCollator]*
  /// - [ffi.Uint8]*
  /// - [ffi.Size]
  /// - [ffi.Uint8]*
  /// - [ffi.Size]
  ///
  /// C return:
  /// - [ICU4XOrdering]
  late final int Function(
    ffi.Pointer<ICU4XCollator> self,
    ffi.Pointer<ffi.Uint8> left_data,
    int left_len,
    ffi.Pointer<ffi.Uint8> right_data,
    int right_len,
  ) compareValidUtf8 = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XCollatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    ICU4XCollatorOptionsV1 options,
  ) createV1 = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XCollator> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCollator> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XCollator> self,
          )>>('ICU4XCollator_destroy');
}
