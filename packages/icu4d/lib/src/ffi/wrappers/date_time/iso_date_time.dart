part of '../../ffi.dart';

final class IsoDateTime implements ffi.Finalizable {
  final ffi.Pointer<ICU4XIsoDateTime> _pointer;

  IsoDateTime._(this._pointer);

  // factory IsoDateTime(
  //   int year,
  //   int month,
  //   int day,
  //   int hour,
  //   int minute,
  //   int second,
  //   int nanosecond,
  // ) {
  //   IsoDate._debugValidateInput(year, month, day);
  //
  //   _bindings.isoDateTime.create(
  //     year,
  //     month,
  //     day,
  //     hour,
  //     minute,
  //     second,
  //     nanosecond,
  //   );
  // }
}
