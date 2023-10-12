// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _MetazoneCalculator {
  _MetazoneCalculator(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XMetazoneCalculatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultICU4XMetazoneCalculatorOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
            )>('ICU4XMetazoneCalculator_create'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XMetazoneCalculator> self,
            ),
            void Function(
              ffi.Pointer<ICU4XMetazoneCalculator> self,
            )>('ICU4XMetazoneCalculator_destroy');

  final ResultICU4XMetazoneCalculatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create;

  final void Function(
    ffi.Pointer<ICU4XMetazoneCalculator> self,
  ) destroy;
}
