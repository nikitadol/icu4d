// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _CodePointSetBuilder {
  _CodePointSetBuilder(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int ch,
  ) addChar = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 ch,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int ch,
      )>(
    'ICU4XCodePointSetBuilder_add_char',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int start,
    int end,
  ) addInclusiveRange = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 start,
        ffi.Uint32 end,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int start,
        int end,
      )>(
    'ICU4XCodePointSetBuilder_add_inclusive_range',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int start,
    int end,
  ) addInclusiveRangeU32 = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 start,
        ffi.Uint32 end,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int start,
        int end,
      )>(
    'ICU4XCodePointSetBuilder_add_inclusive_range_u32',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    ffi.Pointer<ICU4XCodePointSetData> data,
  ) addSet = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      )>(
    'ICU4XCodePointSetBuilder_add_set',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int ch,
  ) addU32 = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 ch,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int ch,
      )>(
    'ICU4XCodePointSetBuilder_add_u32',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XCodePointSetData> Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
  ) build = dynamicLibrary.lookupFunction<
      ffi.Pointer<ICU4XCodePointSetData> Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      ),
      ffi.Pointer<ICU4XCodePointSetData> Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      )>(
    'ICU4XCodePointSetBuilder_build',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
  ) complement = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      )>(
    'ICU4XCodePointSetBuilder_complement',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int ch,
  ) complementChar = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 ch,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int ch,
      )>(
    'ICU4XCodePointSetBuilder_complement_char',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int start,
    int end,
  ) complementInclusiveRange = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 start,
        ffi.Uint32 end,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int start,
        int end,
      )>(
    'ICU4XCodePointSetBuilder_complement_inclusive_range',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    ffi.Pointer<ICU4XCodePointSetData> data,
  ) complementSet = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      )>(
    'ICU4XCodePointSetBuilder_complement_set',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XCodePointSetBuilder> Function() create =
      dynamicLibrary.lookupFunction<
          ffi.Pointer<ICU4XCodePointSetBuilder> Function(),
          ffi.Pointer<ICU4XCodePointSetBuilder> Function()>(
    'ICU4XCodePointSetBuilder_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      )>(
    'ICU4XCodePointSetBuilder_destroy',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
  ) isEmpty = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      ),
      bool Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
      )>(
    'ICU4XCodePointSetBuilder_is_empty',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int ch,
  ) removeChar = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 ch,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int ch,
      )>(
    'ICU4XCodePointSetBuilder_remove_char',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int start,
    int end,
  ) removeInclusiveRange = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 start,
        ffi.Uint32 end,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int start,
        int end,
      )>(
    'ICU4XCodePointSetBuilder_remove_inclusive_range',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    ffi.Pointer<ICU4XCodePointSetData> data,
  ) removeSet = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      )>(
    'ICU4XCodePointSetBuilder_remove_set',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int ch,
  ) retainChar = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 ch,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int ch,
      )>(
    'ICU4XCodePointSetBuilder_retain_char',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    int start,
    int end,
  ) retainInclusiveRange = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Uint32 start,
        ffi.Uint32 end,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        int start,
        int end,
      )>(
    'ICU4XCodePointSetBuilder_retain_inclusive_range',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XCodePointSetBuilder> self,
    ffi.Pointer<ICU4XCodePointSetData> data,
  ) retainSet = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      ),
      void Function(
        ffi.Pointer<ICU4XCodePointSetBuilder> self,
        ffi.Pointer<ICU4XCodePointSetData> data,
      )>(
    'ICU4XCodePointSetBuilder_retain_set',
    isLeaf: true,
  );
}
