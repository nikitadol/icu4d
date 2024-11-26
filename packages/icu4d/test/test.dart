import 'dart:ffi';

import 'package:icu4d/icu.dart';

void main() {
  libraryLoader.overrideForAll(
    () => DynamicLibrary.open('../../icu4x/target/debug/libicu_capi.dylib'),
  );

  void checkUString(UString str) {
    print('-' * 10);
    print('\'$str\'');
    print(str.isEmpty);
    // print(str.length);

    // print(str.iterable.toList(growable: false));
    print(str.hashCode);
  }

  checkUString(''.uString);
  checkUString('Hello'.uString);
  checkUString('Привет'.uString);
  checkUString('👩‍👩‍👧‍👧'.uString);
  checkUString('한글'.uString);
  checkUString('🤦🏼‍♂️'.uString);
  // check('test'.uString + ' test1 👩‍👩‍👧‍👧'.uString);

  print('-' * 10);

  final left = 'Am\xe9lie';
  final right = 'Ame\u{301}lie';

  print('\'$left\' \'$right\'');
  print('${left.length} ${right.length}');
  print(left == right);
  print(left.uString == right.uString);

  void checkLocale(Locale locale) {
    print('-' * 10);
    print(locale);
    print(locale.getUnicodeExtension('ca'.uString));
    print(locale.language);
    print(locale.region);
    print(locale.script);
  }

  checkLocale(Locale());
  checkLocale(Locale('en_US_u_ca_japanese'.uString));
  checkLocale(Locale('en-Latn-US'.uString));
}
