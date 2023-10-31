part of '../../ffi.dart';

final class WeekOf {
  // from 1
  final int week;
  final WeekRelativeUnit unit;

  WeekOf._(this.week, this.unit);

  factory WeekOf._fromIcu4X(ICU4XWeekOf weekOf) {
    return WeekOf._(weekOf.week, WeekRelativeUnit._fromIcu4X(weekOf.unit));
  }

  @override
  String toString() {
    return 'WeekOf{week: $week, unit: ${unit.name}}';
  }
}
