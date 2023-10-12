// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _MetazoneCalculator {
  _MetazoneCalculator(this.dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XMetazoneCalculatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XMetazoneCalculatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XMetazoneCalculator_create',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XMetazoneCalculator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XMetazoneCalculator> self,
            )>(
          'ICU4XMetazoneCalculator_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XMetazoneCalculatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final void Function(
    ffi.Pointer<ICU4XMetazoneCalculator> self,
  ) destroy;
}
