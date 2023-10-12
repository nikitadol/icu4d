// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _BidiParagraph {
  _BidiParagraph(ffi.DynamicLibrary dynamicLibrary)
      : setParagraphInText = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
              ffi.Size n,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
              int n,
            )>('ICU4XBidiParagraph_set_paragraph_in_text'),
        direction = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>('ICU4XBidiParagraph_direction'),
        size = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>('ICU4XBidiParagraph_size'),
        rangeStart = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>('ICU4XBidiParagraph_range_start'),
        rangeEnd = dynamicLibrary.lookupFunction<
            ffi.Size Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>('ICU4XBidiParagraph_range_end'),
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
            )>('ICU4XBidiParagraph_reorder_line'),
        levelAt = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
              ffi.Size pos,
            ),
            int Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
              int pos,
            )>('ICU4XBidiParagraph_level_at'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            ),
            void Function(
              ffi.Pointer<ICU4XBidiParagraph> self,
            )>('ICU4XBidiParagraph_destroy');

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int n,
  ) setParagraphInText;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) direction;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) size;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) rangeStart;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) rangeEnd;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int range_start,
    int range_end,
    ffi.Pointer<DiplomatWriteable> out,
  ) reorderLine;

  final int Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
    int pos,
  ) levelAt;

  final void Function(
    ffi.Pointer<ICU4XBidiParagraph> self,
  ) destroy;
}
