// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _PluralCategories {
  _PluralCategories(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XPluralCategories> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XPluralCategories> self,
      ),
      void Function(
        ffi.Pointer<ICU4XPluralCategories> self,
      )>(
    'ICU4XPluralCategories_destroy',
    isLeaf: true,
  );
}
