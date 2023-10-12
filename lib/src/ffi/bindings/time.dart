// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Time {
  _Time(this.dynamicLibrary)
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
            )>(
          'ICU4XTime_create',
          isLeaf: true,
        ),
        hour = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>(
          'ICU4XTime_hour',
          isLeaf: true,
        ),
        minute = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>(
          'ICU4XTime_minute',
          isLeaf: true,
        ),
        second = dynamicLibrary.lookupFunction<
            ffi.Uint8 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>(
          'ICU4XTime_second',
          isLeaf: true,
        ),
        nanosecond = dynamicLibrary.lookupFunction<
            ffi.Uint32 Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            int Function(
              ffi.Pointer<ICU4XTime> self,
            )>(
          'ICU4XTime_nanosecond',
          isLeaf: true,
        ),
        destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XTime> self,
            ),
            void Function(
              ffi.Pointer<ICU4XTime> self,
            )>(
          'ICU4XTime_destroy',
          isLeaf: true,
        );

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  final ResultICU4XTimeOrICU4XError Function(
    int hour,
    int minute,
    int second,
    int nanosecond,
  ) create;

  final void Function(
    ffi.Pointer<ICU4XTime> self,
  ) destroy;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) hour;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) minute;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) nanosecond;

  final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) second;
}
