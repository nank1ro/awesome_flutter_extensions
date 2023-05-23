import 'package:awesome_flutter_extensions/src/miscellaneous_ext.dart';
import 'package:flutter/cupertino.dart';
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

  group(
    'misellaneous_ext_test -',
    () {
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
    },
  );
}

// Dart's equality operator (==) tests whether two references are to the same
// object not if they have the same value. The Text widgets in the expected
// list and in the actual list are different instances,
// so they are not equal even if their properties are the same.
// The way to solve this issue is to compare the data of the widgets, not the
// widgets themselves. You can do this by creating a helper function that checks
//if two widgets have the same type and data:
bool areWidgetsEqual(Widget widget1, Widget widget2) {
  if (widget1.runtimeType != widget2.runtimeType) {
    return false;
  }

  if (widget1 is Text) {
    return (widget1.data == (widget2 as Text).data);
  } else if (widget1 is SizedBox) {
    return (widget1.height == (widget2 as SizedBox).height);
  }

  return false;
}
