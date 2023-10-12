// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _PluralRules {
  _PluralRules(this.dynamicLibrary)
      : createCardinal = dynamicLibrary.lookupFunction<
            ResultICU4XPluralRulesOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XPluralRulesOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>(
          'ICU4XPluralRules_create_cardinal',
          isLeaf: true,
        ),
        createOrdinal = dynamicLibrary.lookupFunction<
            ResultICU4XPluralRulesOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XPluralRulesOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>(
          'ICU4XPluralRules_create_ordinal',
          isLeaf: true,
        ),
        categoryFor = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XPluralRules> self,
              ffi.Pointer<ICU4XPluralOperands> op,
            ),
            int Function(
              ffi.Pointer<ICU4XPluralRules> self,
              ffi.Pointer<ICU4XPluralOperands> op,
            )>(
          'ICU4XPluralRules_category_for',
          isLeaf: true,
        ),
        categories = dynamicLibrary.lookupFunction<
            ICU4XPluralCategories Function(
              ffi.Pointer<ICU4XPluralRules> self,
            ),
            ICU4XPluralCategories Function(
              ffi.Pointer<ICU4XPluralRules> self,
            )>(
          'ICU4XPluralRules_categories',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XPluralRules> self,
            ),
            void Function(
              ffi.Pointer<ICU4XPluralRules> self,
            )>(
          'ICU4XPluralRules_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ICU4XPluralCategories Function(
    ffi.Pointer<ICU4XPluralRules> self,
  ) categories;

  final int Function(
    ffi.Pointer<ICU4XPluralRules> self,
    ffi.Pointer<ICU4XPluralOperands> op,
  ) categoryFor;

  final ResultICU4XPluralRulesOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createCardinal;

  final ResultICU4XPluralRulesOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createOrdinal;

  final void Function(
    ffi.Pointer<ICU4XPluralRules> self,
  ) destroy;
}
