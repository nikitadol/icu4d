// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Time {
  _Time(ffi.DynamicLibrary dynamicLibrary)
      : create = dynamicLibrary.lookupFunction<
            ResultICU4XTimeOrICU4XError Function(
              ffi.Uint8 hour,
              ffi.Uint8 minute,
              ffi.Uint8 second,
              ffi.Uint32 nanosecond,
            ),
            ResultICU4XTimeOrICU4XError Function(
              int hour,
              int minute,
              int second,
              int nanosecond,
            )>('ICU4XTime_create'),
        hour = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>('ICU4XTime_hour'),
        minute = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>('ICU4XTime_minute'),
        second = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>('ICU4XTime_second'),
        nanosecond = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>('ICU4XTime_nanosecond'),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            void Function(
              ffi.Pointer<ICU4XTime> self,
            )>('ICU4XTime_destroy');

  final ResultICU4XTimeOrICU4XError Function(
    int hour,
    int minute,
    int second,
    int nanosecond,
  ) create;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) hour;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) minute;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) second;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) nanosecond;

  final void Function(
    ffi.Pointer<ICU4XTime> self,
  ) destroy;
}
