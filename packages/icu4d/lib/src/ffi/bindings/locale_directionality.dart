// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _LocaleDirectionality {
  _LocaleDirectionality(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XLocaleDirectionalityOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
  ) create = dynamicLibrary.lookupFunction<
      ResultICU4XLocaleDirectionalityOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      ),
      ResultICU4XLocaleDirectionalityOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
      )>(
    'ICU4XLocaleDirectionality_create',
    isLeaf: true,
  );

  late final ResultICU4XLocaleDirectionalityOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocaleExpander> expander,
  ) createWithExpander = dynamicLibrary.lookupFunction<
      ResultICU4XLocaleDirectionalityOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocaleExpander> expander,
      ),
      ResultICU4XLocaleDirectionalityOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocaleExpander> expander,
      )>(
    'ICU4XLocaleDirectionality_create_with_expander',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XLocaleDirectionality> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
      ),
      void Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
      )>(
    'ICU4XLocaleDirectionality_destroy',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XLocaleDirectionality> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) get = dynamicLibrary.lookupFunction<
      ffi.Int32 Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      int Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XLocaleDirectionality_get',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XLocaleDirectionality> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) isLeftToRight = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      bool Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XLocaleDirectionality_is_left_to_right',
    isLeaf: true,
  );

  late final bool Function(
    ffi.Pointer<ICU4XLocaleDirectionality> self,
    ffi.Pointer<ICU4XLocale> locale,
  ) isRightToLeft = dynamicLibrary.lookupFunction<
      ffi.Bool Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
        ffi.Pointer<ICU4XLocale> locale,
      ),
      bool Function(
        ffi.Pointer<ICU4XLocaleDirectionality> self,
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XLocaleDirectionality_is_right_to_left',
    isLeaf: true,
  );
}
