// ignore_for_file: require_trailing_commas, non_constant_identifier_names

part of '../bindings.dart';

final class _AnyCalendarKind {
  _AnyCalendarKind(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  /// C args:
  /// - [ICU4XAnyCalendarKind]
  /// - [DiplomatWriteable]*
  ///
  /// C return:
  /// - [ResultVoidOrICU4XError]
  late final ResultVoidOrICU4XError Function(
    int self,
    ffi.Pointer<DiplomatWriteable> write,
  ) bcp47 = dynamicLibrary.lookupFunction<
      ResultVoidOrICU4XError Function(
        ffi.Int32 self,
        ffi.Pointer<DiplomatWriteable> write,
      ),
      ResultVoidOrICU4XError Function(
        int self,
        ffi.Pointer<DiplomatWriteable> write,
      )>(
    'ICU4XAnyCalendarKind_bcp47',
    isLeaf: true,
  );

  late final ResultICU4XAnyCalendarKindOrVoid Function(
    ffi.Pointer<ffi.Uint8> s_data,
    int s_len,
  ) getForBcp47 = dynamicLibrary.lookupFunction<
      ResultICU4XAnyCalendarKindOrVoid Function(
        ffi.Pointer<ffi.Uint8> s_data,
        ffi.Size s_len,
      ),
      ResultICU4XAnyCalendarKindOrVoid Function(
        ffi.Pointer<ffi.Uint8> s_data,
        int s_len,
      )>(
    'ICU4XAnyCalendarKind_get_for_bcp47',
    isLeaf: true,
  );

  late final ResultICU4XAnyCalendarKindOrVoid Function(
    ffi.Pointer<ICU4XLocale> locale,
  ) getForLocale = dynamicLibrary.lookupFunction<
      ResultICU4XAnyCalendarKindOrVoid Function(
        ffi.Pointer<ICU4XLocale> locale,
      ),
      ResultICU4XAnyCalendarKindOrVoid Function(
        ffi.Pointer<ICU4XLocale> locale,
      )>(
    'ICU4XAnyCalendarKind_get_for_locale',
    isLeaf: true,
  );
}
