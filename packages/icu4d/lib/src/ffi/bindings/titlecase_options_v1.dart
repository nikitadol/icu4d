// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _TitlecaseOptionsV1 {
  _TitlecaseOptionsV1(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ICU4XTitlecaseOptionsV1 Function() defaultOptions =
      dynamicLibrary.lookupFunction<ICU4XTitlecaseOptionsV1 Function(),
          ICU4XTitlecaseOptionsV1 Function()>(
    'ICU4XTitlecaseOptionsV1_default_options',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XTitlecaseOptionsV1> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XTitlecaseOptionsV1> self,
      ),
      void Function(
        ffi.Pointer<ICU4XTitlecaseOptionsV1> self,
      )>(
    'ICU4XTitlecaseOptionsV1_destroy',
    isLeaf: true,
  );
}
