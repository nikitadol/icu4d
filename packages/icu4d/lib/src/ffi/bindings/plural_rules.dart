// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _PluralRules {
  _PluralRules(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ICU4XPluralCategories Function(
    ffi.Pointer<ICU4XPluralRules> self,
  ) categories = dynamicLibrary.lookupFunction<
      ICU4XPluralCategories Function(
        ffi.Pointer<ICU4XPluralRules> self,
      ),
      ICU4XPluralCategories Function(
        ffi.Pointer<ICU4XPluralRules> self,
      )>(
    'ICU4XPluralRules_categories',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XPluralRules> self,
    ffi.Pointer<ICU4XPluralOperands> op,
  ) categoryFor = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XPluralRulesOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createCardinal = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XPluralRulesOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createOrdinal = dynamicLibrary.lookupFunction<
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
  );

  late final void Function(
    ffi.Pointer<ICU4XPluralRules> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XPluralRules> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XPluralRules> self,
          )>>('ICU4XPluralRules_destroy');
}
