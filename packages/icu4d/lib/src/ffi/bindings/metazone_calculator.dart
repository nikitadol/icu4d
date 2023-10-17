// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _MetazoneCalculator {
  _MetazoneCalculator(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XMetazoneCalculatorOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XMetazoneCalculatorOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XMetazoneCalculatorOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XMetazoneCalculator_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XMetazoneCalculator> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XMetazoneCalculator> self,
      ),
      void Function(
        ffi.Pointer<ICU4XMetazoneCalculator> self,
      )>(
    'ICU4XMetazoneCalculator_destroy',
    isLeaf: true,
  );
}
