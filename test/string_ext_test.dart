import 'package:awesome_flutter_extensions/src/string_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('string_ext_test -', () {
    test('capitalizeFirst', () {
      const s = 'hello world';
      expect(s.capitalizeFirst(), 'Hello world');
    });

    test('capitalize', () {
      const s = 'hello world';
      expect(s.capitalize(), 'Hello World');
    });

    test('isBool', () {
      const s1 = 'true';
      expect(s1.isBool(), true);

      const s2 = 'false';
      expect(s2.isBool(), true);

      const s3 = 'False';
      expect(s3.isBool(), false);

      const s4 = 'False';
      expect(s4.isBool(caseSensitive: false), true);

      const s5 = 'False';
      expect(s5.isBool(caseSensitive: false), true);

      const s6 = 'YES';
      expect(s6.isBool(), false);

      const s7 = '1';
      expect(s7.isBool(), false);
    });

    test('toBool', () {
      const s1 = 'true';
      expect(s1.toBool(), true);

      const s2 = 'false';
      expect(s2.toBool(), false);

      const s3 = 'False';
      expect(() => s3.toBool(), throwsException);

      const s4 = 'False';
      expect(s4.toBool(caseSensitive: false), false);

      const s5 = 'False';
      expect(s5.toBool(caseSensitive: false), false);

      const s6 = 'YES';
      expect(() => s6.toBool(), throwsException);

      const s7 = '1';
      expect(() => s7.toBool(), throwsException);
    });

    test('isNum', () {
      const s1 = '0.0';
      expect(s1.isNum(), true);

      const s2 = '2021';
      expect(s2.isNum(), true);

      const s3 = '3.14';
      expect(s3.isNum(), true);

      const s4 = '  3.14 \xA0';
      expect(s4.isNum(), true);

      const s5 = '.0';
      expect(s5.isNum(), true);

      const s6 = '-1.e3';
      expect(s6.isNum(), true);

      const s7 = '1234E+7';
      expect(s7.isNum(), true);

      const s8 = '+.12e-9';
      expect(s8.isNum(), true);

      const s9 = '-NaN';
      expect(s9.isNum(), true);

      const s10 = '0xFF';
      expect(s10.isNum(), true);

      final s11 = double.infinity.toString();
      expect(s11.isNum(), true);

      const s12 = 'hi';
      expect(s12.isNum(), false);

      const s13 = '1f';
      expect(s13.isNum(), false);
    });

    test('toNum', () {
      const s1 = '0.0';
      expect(s1.toNum(), 0.0);

      const s2 = '2021';
      expect(s2.toNum(), 2021);

      const s3 = '3.14';
      expect(s3.toNum(), 3.14);

      const s4 = '  3.14 \xA0';
      expect(s4.toNum(), 3.14);

      const s5 = '.0';
      expect(s5.toNum(), 0.0);

      const s6 = '-1.e3';
      expect(s6.toNum(), -1000.0);

      const s7 = '1234E+7';
      expect(s7.toNum(), 1234E+7);

      const s8 = '+.12e-9';
      expect(s8.toNum(), .12e-9);

      const s9 = '-NaN';
      expect(s9.toNum(), isNaN);

      const s10 = '0xFF';
      expect(s10.toNum(), 255);

      final s11 = double.infinity.toString();
      expect(s11.toNum(), double.infinity);

      const s12 = 'hi';
      expect(() => s12.toNum(), throwsException);

      const s13 = '1f';
      expect(() => s13.toNum(), throwsException);
    });

    test('removeAllWhitespace', () {
      const s = 'hello world';
      expect(s.removeAllWhitespace(), 'helloworld');

      const s2 = 'hello  world';
      expect(s2.removeAllWhitespace(), 'helloworld');

      const s3 = '   hello          world      ';
      expect(s3.removeAllWhitespace(), 'helloworld');
    });
  });
}
