import 'package:awesome_flutter_extensions/src/miscellaneous_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('misellaneous_ext_test -', () {
    test('num to Duration', () {
      final dur1 = 1000.milliseconds;
      expect(dur1, const Duration(milliseconds: 1000));

      final dur2 = 1000.seconds;
      expect(dur2, const Duration(seconds: 1000));

      final dur3 = 1000.minutes;
      expect(dur3, const Duration(minutes: 1000));

      final dur4 = 1000.hours;
      expect(dur4, const Duration(hours: 1000));

      final dur5 = 1000.days;
      expect(dur5, const Duration(days: 1000));

      final dur6 = 1.years;
      expect(dur6, const Duration(days: 365));

      final dur7 = 1000.microseconds;
      expect(dur7, const Duration(microseconds: 1000));
    });
    test('await duration', () async {
      final dur = 1.seconds;
      expect(dur.future(), isA<Future<dynamic>>());
    });
  });
}
