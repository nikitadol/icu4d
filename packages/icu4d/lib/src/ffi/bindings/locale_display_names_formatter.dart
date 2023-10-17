// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _LocaleDisplayNamesFormatter {
  _LocaleDisplayNamesFormatter(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final void Function(
    ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  late final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
          )>> destroyPointer = dynamicLibrary.lookup<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
          )>>('ICU4XLocaleDisplayNamesFormatter_destroy');

  late final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
    ffi.Pointer<ICU4XLocale> locale,
    ffi.Pointer<DiplomatWriteable> write,
  ) of = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        ffi.Pointer<ICU4XLocaleDisplayNamesFormatter> self,
        ffi.Pointer<ICU4XLocale> locale,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XLocaleDisplayNamesFormatter_of',
    isLeaf: true,
  );

  late final ResultICU4XLocaleDisplayNamesFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    ICU4XDisplayNamesOptionsV1 options,
  ) tryNew = dynamicLibrary.lookupFunction<
      ResultICU4XLocaleDisplayNamesFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ICU4XDisplayNamesOptionsV1 options,
      ),
      ResultICU4XLocaleDisplayNamesFormatterOrICU4XError Function(
        ffi.Pointer<ICU4XDataProvider> provider,
        ffi.Pointer<ICU4XLocale> locale,
        ICU4XDisplayNamesOptionsV1 options,
      )>(
    'ICU4XLocaleDisplayNamesFormatter_try_new',
    isLeaf: true,
  );
}
