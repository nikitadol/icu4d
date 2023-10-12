// ignore_for_file: require_trailing_commas

part of '../bindings.dart';

final class _WeekOf {
  _WeekOf(ffi.DynamicLibrary dynamicLibrary)
      : destroy = dynamicLibrary.lookupFunction<
            ffi.Void Function(
              ffi.Pointer<ICU4XWeekOf> self,
            ),
            void Function(
              ffi.Pointer<ICU4XWeekOf> self,
            )>('ICU4XWeekOf_destroy');

  final void Function(
    ffi.Pointer<ICU4XWeekOf> self,
  ) destroy;
}
