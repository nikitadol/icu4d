// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _Locale {
  _Locale(this.dynamicLibrary)
      : createFromString = dynamicLibrary.lookupFunction<
            ResultICU4XLocaleOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> name_data,
              ffi.Size name_len,
            ),
            ResultICU4XLocaleOrICU4XError Function(
              ffi.Pointer<ffi.Uint8> name_data,
              int name_len,
            )>(
          'ICU4XLocale_create_from_string',
          isLeaf: true,
        ),
        createUnd = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(),
            ffi.Pointer<ICU4XLocale> Function()>(
          'ICU4XLocale_create_und',
          isLeaf: true,
        ),
        clone = dynamicLibrary.lookupFunction<
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocale> self,
            ),
            ffi.Pointer<ICU4XLocale> Function(
              ffi.Pointer<ICU4XLocale> self,
            )>(
          'ICU4XLocale_clone',
          isLeaf: true,
        ),
        basename = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XLocale_basename',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XLocale_get_unicode_extension',
          isLeaf: true,
        ),
        language = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XLocale_language',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XLocale_set_language',
          isLeaf: true,
        ),
        region = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XLocale_region',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XLocale_set_region',
          isLeaf: true,
        ),
        script = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XLocale_script',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XLocale_set_script',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XLocale_canonicalize',
          isLeaf: true,
        ),
        toString_ = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XLocale> self,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XLocale_to_string',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XLocale_normalizing_eq',
          isLeaf: true,
        ),
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
            )>(
          'ICU4XLocale_strict_cmp',
          isLeaf: true,
        ),
        destroyPointer = dynamicLibrary.lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                  ffi.Pointer<ICU4XLocale> self,
                )>>('ICU4XLocale_destroy');

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) basename;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
    ffi.Pointer<DiplomatWriteable> write,
  ) canonicalize;

  final ffi.Pointer<ICU4XLocale> Function(
    ffi.Pointer<ICU4XLocale> self,
  ) clone;

  late final ffi.Pointer<ICU4XLocale> Function() createBn =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XLocale> Function(),
          ffi.Pointer<ICU4XLocale> Function()>(
    'ICU4XLocale_create_bn',
    isLeaf: true,
  );

  late final ffi.Pointer<ICU4XLocale> Function() createEn =
      dynamicLibrary.lookupFunction<ffi.Pointer<ICU4XLocale> Function(),
          ffi.Pointer<ICU4XLocale> Function()>(
    'ICU4XLocale_create_en',
    isLeaf: true,
  );

  final ResultICU4XLocaleOrICU4XError Function(
    ffi.Pointer<ffi.Uint8> name_data,
    int name_len,
  ) createFromString;

  final ffi.Pointer<ICU4XLocale> Function() createUnd;

  late final void Function(
    ffi.Pointer<ICU4XLocale> self,
  ) destroy = destroyPointer.asFunction(isLeaf: true);

  final ffi.Pointer<
      ffi.NativeFunction<
          ffi.Void Function(
            ffi.Pointer<ICU4XLocale> self,
          )>> destroyPointer;

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

  final bool Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> other_data,
    int other_len,
  ) normalizingEq;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) region;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) script;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
  ) setLanguage;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
  ) setRegion;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> bytes_data,
    int bytes_len,
  ) setScript;

// C args:
// - ICU4XLocale*
// - ffi.Uint8*
// - ffi.Size
//
// C return:
// - ICU4XOrdering
  final int Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<ffi.Uint8> other_data,
    int other_len,
  ) strictCmp;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XLocale> self,
    ffi.Pointer<DiplomatWriteable> write,
  ) toString_;
}
