// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Locale {
  _Locale(ffi.DynamicLibrary dynamicLibrary)
      : createFromString = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> name_data,
              ffi.Size name_len,
            ),
            ResultICU4XLocaleOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> name_data,
              int name_len,
            )>('ICU4XLocale_create_from_string'),
        createUnd = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(),
            ffi.Pointer<ICU4XLocale> Function()>('ICU4XLocale_create_und'),
        clone = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocale> self,
            ),
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocale> self,
            )>('ICU4XLocale_clone'),
        basename = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocale_basename'),
        getUnicodeExtension = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              ffi.Size bytes_len,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              int bytes_len,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocale_get_unicode_extension'),
        language = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocale_language'),
        setLanguage = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              ffi.Size bytes_len,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              int bytes_len,
            )>('ICU4XLocale_set_language'),
        region = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocale_region'),
        setRegion = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              ffi.Size bytes_len,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              int bytes_len,
            )>('ICU4XLocale_set_region'),
        script = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocale_script'),
        setScript = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              ffi.Size bytes_len,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> bytes_data,
              int bytes_len,
            )>('ICU4XLocale_set_script'),
        canonicalize = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> bytes_data,
              ffi.Size bytes_len,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> bytes_data,
              int bytes_len,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocale_canonicalize'),
        toString_ = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XLocale_to_string'),
        normalizingEq = dynamicLibrary.lookupFunction<
            ffi.Bool Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> other_data,
              ffi.Size other_len,
            ),
            bool Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> other_data,
              int other_len,
            )>('ICU4XLocale_normalizing_eq'),
        strictCmp = dynamicLibrary.lookupFunction<
            ffi.Int32 Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> other_data,
              ffi.Size other_len,
            ),
            int Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<ffi.Uint8> other_data,
              int other_len,
            )>('ICU4XLocale_strict_cmp'),
        createEn = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(),
            ffi.Pointer<ICU4XLocale> Function()>('ICU4XLocale_create_en'),
        createBn = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(),
            ffi.Pointer<ICU4XLocale> Function()>('ICU4XLocale_create_bn'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XLocale> self,
            ),
            void Function(
              ffi.Pointer<ICU4XLocale> self,
            )>('ICU4XLocale_destroy');

  final ResultICU4XLocaleOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) createFromString;

  final ffi.Pointer<ICU4XLocale> Function() createUnd;

  final ffi.Pointer<ICU4XLocale> Function(
    ffi.Pointer<ICU4XLocale> self,
  ) clone;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) basename;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) getUnicodeExtension;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) language;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
  ) setLanguage;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) region;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
  ) setRegion;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) script;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
  ) setScript;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) canonicalize;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) toString_;

  final bool Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> other_data,
    int other_len,
  ) normalizingEq;

  final int Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> other_data,
    int other_len,
  ) strictCmp;

  final ffi.Pointer<ICU4XLocale> Function() createEn;

  final ffi.Pointer<ICU4XLocale> Function() createBn;

  final void Function(
    ffi.Pointer<ICU4XLocale> self,
  ) destroy;
}
