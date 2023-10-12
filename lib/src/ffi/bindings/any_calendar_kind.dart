// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _AnyCalendarKind {
  _AnyCalendarKind(ffi.DynamicLibrary dynamicLibrary)
      : getForLocale = dynamicLibrary.lookupFunction<
            ResultICU4XAnyCalendarKindOrVoid Function(
              ffi.Pointer<ICU4XLocale> locale,
            ),
            ResultICU4XAnyCalendarKindOrVoid Function(
              ffi.Pointer<ICU4XLocale> locale,
            )>('ICU4XAnyCalendarKind_get_for_locale'),
        getForBcp47 = dynamicLibrary.lookupFunction<
            ResultICU4XAnyCalendarKindOrVoid Function(
              ffi.Pointer<ffi.Uint8> s_data,
              ffi.Size s_len,
            ),
            ResultICU4XAnyCalendarKindOrVoid Function(
              ffi.Pointer<ffi.Uint8> s_data,
              int s_len,
            )>('ICU4XAnyCalendarKind_get_for_bcp47'),
        bcp47 = dynamicLibrary.lookupFunction<
            ResultVoidOrICU4XError Function(
              ffi.Int32 self,
              ffi.Pointer<DiplomatWriteable> write,
            ),
            ResultVoidOrICU4XError Function(
              int self,
              ffi.Pointer<DiplomatWriteable> write,
            )>('ICU4XAnyCalendarKind_bcp47');

  final ResultICU4XAnyCalendarKindOrVoid Function(
    ffi.Pointer<ICU4XLocale> locale,
  ) getForLocale;

  final ResultICU4XAnyCalendarKindOrVoid Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) getForBcp47;

  final ResultVoidOrICU4XError Function(
    int self,
    ffi.Pointer<DiplomatWriteable> write,
  ) bcp47;
}
