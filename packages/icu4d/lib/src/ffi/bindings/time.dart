// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _Time {
  _Time(this.dynamicLibrary);

  @visibleForTesting
  final ffi.DynamicLibrary dynamicLibrary;

  late final ResultICU4XTimeOrICU4XError Function(
    int hour,
    int minute,
    int second,
    int nanosecond,
  ) create = dynamicLibrary.lookupFunction<
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
  );

  late final ResultICU4XTimeOrICU4XError Function() createMidnight =
      dynamicLibrary.lookupFunction<ResultICU4XTimeOrICU4XError Function(),
          ResultICU4XTimeOrICU4XError Function()>(
    'ICU4XTime_create_midnight',
    isLeaf: true,
  );

  late final void Function(
    ffi.Pointer<ICU4XTime> self,
  ) destroy = dynamicLibrary.lookupFunction<
      ffi.Void Function(
        ffi.Pointer<ICU4XTime> self,
      ),
      void Function(
        ffi.Pointer<ICU4XTime> self,
      )>(
    'ICU4XTime_destroy',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) hour = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XTime> self,
      )>(
    'ICU4XTime_hour',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) minute = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XTime> self,
      )>(
    'ICU4XTime_minute',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) nanosecond = dynamicLibrary.lookupFunction<
      ffi.Uint32 Function(
        ffi.Pointer<ICU4XTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XTime> self,
      )>(
    'ICU4XTime_nanosecond',
    isLeaf: true,
  );

  late final int Function(
    ffi.Pointer<ICU4XTime> self,
  ) second = dynamicLibrary.lookupFunction<
      ffi.Uint8 Function(
        ffi.Pointer<ICU4XTime> self,
      ),
      int Function(
        ffi.Pointer<ICU4XTime> self,
      )>(
    'ICU4XTime_second',
    isLeaf: true,
  );
}
