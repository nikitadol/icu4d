part of '../../ffi.dart';

enum IsoWeekday {
  monday._(ICU4XIsoWeekday.monday),
  tuesday._(ICU4XIsoWeekday.tuesday),
  wednesday._(ICU4XIsoWeekday.wednesday),
  thursday._(ICU4XIsoWeekday.thursday),
  friday._(ICU4XIsoWeekday.friday),
  saturday._(ICU4XIsoWeekday.saturday),
  sunday._(ICU4XIsoWeekday.sunday);

  final int _icu4xValue;

  const IsoWeekday._(this._icu4xValue);

  factory IsoWeekday._fromIcu4X(int value) {
    const map = {
      ICU4XIsoWeekday.monday: IsoWeekday.monday,
      ICU4XIsoWeekday.tuesday: IsoWeekday.tuesday,
      ICU4XIsoWeekday.wednesday: IsoWeekday.wednesday,
      ICU4XIsoWeekday.thursday: IsoWeekday.thursday,
      ICU4XIsoWeekday.friday: IsoWeekday.friday,
      ICU4XIsoWeekday.saturday: IsoWeekday.saturday,
      ICU4XIsoWeekday.sunday: IsoWeekday.sunday,
    };

    final res = map[value];

    if (res == null) {
      throw UnsupportedError('IsoWeekday not contain $value');
    }

    return res;
  }
}
