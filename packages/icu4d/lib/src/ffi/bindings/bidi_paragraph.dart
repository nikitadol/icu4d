// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _BidiParagraph {
  _BidiParagraph(this.dynamicLibrary)
      : setParagraphInText = dynamicLibrary.lookupFunction<
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
        ),
        direction = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>(
          'ICU4XBidiParagraph_direction',
          isLeaf: true,
        ),
        size = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>(
          'ICU4XBidiParagraph_size',
          isLeaf: true,
        ),
        rangeStart = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>(
          'ICU4XBidiParagraph_range_start',
          isLeaf: true,
        ),
        rangeEnd = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>(
          'ICU4XBidiParagraph_range_end',
          isLeaf: true,
        ),
        reorderLine = dynamicLibrary.lookupFunction<
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
        ),
        levelAt = dynamicLibrary.lookupFunction<
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
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            void Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>(
          'ICU4XBidiParagraph_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final void Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) direction;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int pos,
  ) levelAt;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) rangeEnd;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) rangeStart;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int range_start,
    int range_end,
    ffi.Pointer<DiplomatWriteable> out,
  ) reorderLine;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int n,
  ) setParagraphInText;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) size;
}
