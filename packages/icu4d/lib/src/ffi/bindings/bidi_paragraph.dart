// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _BidiParagraph {
  _BidiParagraph(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XBidiParagraph> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XBidiParagraph> self,
          )>>('ICU4XBidiParagraph_destroy');

  /// C args:
  /// - [ICU4XBidiParagraph]*
  ///
  /// C return:
  /// - [ICU4XBidiDirection]
  late final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) direction = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      )>(
    'ICU4XBidiParagraph_direction',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int pos,
  ) levelAt = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
        ffi.Size pos,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
        int pos,
      )>(
    'ICU4XBidiParagraph_level_at',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) rangeEnd = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      )>(
    'ICU4XBidiParagraph_range_end',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) rangeStart = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      )>(
    'ICU4XBidiParagraph_range_start',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int range_start,
    int range_end,
    ffi.Pointer<DiplomatWriteable> out,
  ) reorderLine = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
        ffi.Size range_start,
        ffi.Size range_end,
        ffi.Pointer<DiplomatWriteable> out,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
        int range_start,
        int range_end,
        ffi.Pointer<DiplomatWriteable> out,
      )>(
    'ICU4XBidiParagraph_reorder_line',
    isLeaf: true,
  );

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int n,
  ) setParagraphInText = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
        ffi.Size n,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
        int n,
      )>(
    'ICU4XBidiParagraph_set_paragraph_in_text',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) size = dynamicLibrary.lookupFunction<
      ffi.Size Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      ),
      int Function(
        ffi.Pointer<ICU4XBidiParagraph> self,
      )>(
    'ICU4XBidiParagraph_size',
    isLeaf: true,
  );
}
