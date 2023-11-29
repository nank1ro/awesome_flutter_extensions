import 'package:awesome_flutter_extensions/src/num_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('num_ext_test -', () {
    test('ordinal', () {
      const n0 = 0;
      expect(n0.ordinal, '0th');

      const n1 = 1;
      expect(n1.ordinal, '1st');

      const n2 = 22;
      expect(n2.ordinal, '22nd');

      const n3 = 143;
      expect(n3.ordinal, '143rd');

      const n4 = 12;
      expect(n4.ordinal, '12th');

      const n5 = 100;
      expect(n5.ordinal, '100th');

      const n6 = 11;
      expect(n6.ordinal, '11th');

      const n7 = 13;
      expect(n7.ordinal, '13th');

      const n8 = 77;
      expect(n8.ordinal, '77th');
    });

    test('roman', () {
      const n1 = 1;
      expect(n1.roman, 'I');

      const n2 = 3999;
      expect(n2.roman, 'MMMCMXCIX');

      const n3 = 150;
      expect(n3.roman, 'CL');

      const n4 = 999;
      expect(n4.roman, 'CMXCIX');

      const n5 = 444;
      expect(n5.roman, 'CDXLIV');

      const n6 = 1984;
      expect(n6.roman, 'MCMLXXXIV');

      const n7 = 4000;
      expect(() => n7.roman, throwsA(isA<Exception>()));

      const n8 = -10;
      expect(() => n8.roman, throwsA(isA<Exception>()));
    });
  });
}
