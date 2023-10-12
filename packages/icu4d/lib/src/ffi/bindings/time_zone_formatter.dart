// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _TimeZoneFormatter {
  _TimeZoneFormatter(this.dynamicLibrary)
      : createWithLocalizedGmtFallback = dynamicLibrary.lookupFunction<
            ResultICU4XTimeZoneFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XTimeZoneFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
            )>(
          'ICU4XTimeZoneFormatter_create_with_localized_gmt_fallback',
          isLeaf: true,
        ),
        createWithIso8601Fallback = dynamicLibrary.lookupFunction<
            ResultICU4XTimeZoneFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ICU4XIsoTimeZoneOptions options,
            ),
            ResultICU4XTimeZoneFormatterOrICU4XError Function(
              ffi.Pointer<ICU4XDataProvider> provider,
              ffi.Pointer<ICU4XLocale> locale,
              ICU4XIsoTimeZoneOptions options,
            )>(
          'ICU4XTimeZoneFormatter_create_with_iso_8601_fallback',
          isLeaf: true,
        ),
        loadGenericNonLocationLong = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XTimeZoneFormatter_load_generic_non_location_long',
          isLeaf: true,
        ),
        loadGenericNonLocationShort = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XTimeZoneFormatter_load_generic_non_location_short',
          isLeaf: true,
        ),
        loadSpecificNonLocationLong = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XTimeZoneFormatter_load_specific_non_location_long',
          isLeaf: true,
        ),
        loadSpecificNonLocationShort = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XTimeZoneFormatter_load_specific_non_location_short',
          isLeaf: true,
        ),
        loadGenericLocationFormat = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XDataProvider> provider,
            )>(
          'ICU4XTimeZoneFormatter_load_generic_location_format',
          isLeaf: true,
        ),
        loadLocalizedGmtFormat = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
            )>(
          'ICU4XTimeZoneFormatter_load_localized_gmt_format',
          isLeaf: true,
        ),
        loadIso8601Format = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ICU4XIsoTimeZoneOptions options,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ICU4XIsoTimeZoneOptions options,
            )>(
          'ICU4XTimeZoneFormatter_load_iso_8601_format',
          isLeaf: true,
        ),
        formatCustomTimeZone = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XCustomTimeZone> value,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
              ffi.Pointer<ICU4XCustomTimeZone> value,
              ffi.Pointer<DiplomatWriteable> write,
            )>(
          'ICU4XTimeZoneFormatter_format_custom_time_zone',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
            ),
            void Function(
              ffi.Pointer<ICU4XTimeZoneFormatter> self,
            )>(
          'ICU4XTimeZoneFormatter_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XTimeZoneFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
    ICU4XIsoTimeZoneOptions options,
  ) createWithIso8601Fallback;

  final ResultICU4XTimeZoneFormatterOrICU4XError Function(
    ffi.Pointer<ICU4XDataProvider> provider,
    ffi.Pointer<ICU4XLocale> locale,
  ) createWithLocalizedGmtFallback;

  final void Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
  ) destroy;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
    ffi.Pointer<ICU4XCustomTimeZone> value,
    ffi.Pointer<DiplomatWriteable> write,
  ) formatCustomTimeZone;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGenericLocationFormat;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGenericNonLocationLong;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadGenericNonLocationShort;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
    ICU4XIsoTimeZoneOptions options,
  ) loadIso8601Format;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
  ) loadLocalizedGmtFormat;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSpecificNonLocationLong;

  final ResultVoidOrICU4XError Function(
    ffi.Pointer<ICU4XTimeZoneFormatter> self,
    ffi.Pointer<ICU4XDataProvider> provider,
  ) loadSpecificNonLocationShort;
}
