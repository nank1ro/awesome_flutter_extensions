import 'package:awesome_flutter_extensions/src/miscellaneous_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // There's no built-in way to check if two Text widgets are equal, as the
  // equality operator (==) compares whether two references point to the same
  // object, rather than if they have equivalent properties. However, you can
  // simplify the process by creating a matcher that checks the data of Text
  // widgets.
  bool areWidgetsEqual(Widget widget1, Widget widget2) {
    if (widget1.runtimeType != widget2.runtimeType) {
      return false;
    }

    if (widget1 is Text && widget2 is Text) {
      return (widget1.data == widget2.data);
    } else if (widget1 is SizedBox && widget2 is SizedBox) {
      return (widget1.height == widget2.height);
    }

    return false;
  }

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

    test(
      'SeparatedIterable.separatedBy inserts separator',
      () {
        // Create a list of widgets
        final widgets = <Widget>[
          const Text('1'),
          const Text('2'),
          const Text('3')
        ];

        //Create a separator widget
        const Widget separator = SizedBox(height: 8);

        // Separate the widgets by the separator
        final separatedList = widgets.separatedBy(separator);

        final expectedResult = <Widget>[
          const Text('1'),
          const SizedBox(height: 8),
          const Text('2'),
          const SizedBox(height: 8),
          const Text('3'),
        ];

        expect(separatedList.length, expectedResult.length);

        for (var i = 0; i < separatedList.length; i++) {
          expect(
            areWidgetsEqual(separatedList[i], expectedResult[i]),
            isTrue,
          );
        }
      },
    );
  });
}
