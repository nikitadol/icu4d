// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _IanaToBcp47Mapper {
  _IanaToBcp47Mapper(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XIanaToBcp47MapperOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XIanaToBcp47MapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XIanaToBcp47MapperOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XIanaToBcp47Mapper_create',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XIanaToBcp47Mapper> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XIanaToBcp47Mapper> self,
      ),
      void Function(
        ffi.Pointer<ICU4XIanaToBcp47Mapper> self,
      )>(
    'ICU4XIanaToBcp47Mapper_destroy',
    isLeaf: true,
  );
}
