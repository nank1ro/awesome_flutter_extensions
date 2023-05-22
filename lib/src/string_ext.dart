/// String extensions
extension StringExt on String {
  /// Capitalizes each word in the string, e.g.:
  /// `hello world` becomes `Hello World`.
  String capitalize() {
    return split(' ').map((e) => e.capitalizeFirst()).join(' ');
  }

  /// Capitalizes the first word in the string, e.g.:
  /// `hello world` becomes `Hello world`.
  String capitalizeFirst() {
    if (length == 0) return '';
    if (length == 1) return toUpperCase();
    return substring(0, 1).toUpperCase() + substring(1);
  }

  /// Mocks a string that needs to be translated
  String get mock => '$this 🧨';

  /// Indicates if the string is a boolean
  ///
  /// If [caseSensitive] is `true`, which is the default,
  /// the only accepted inputs are the strings `"true"` and `"false"`,
  /// Example:
  /// ```dart
  /// print('true'.isBool()); // true
  /// print('false'.isBool()); // true
  /// print('TRUE'.isBool()); // false
  /// print('TRUE'.isBool(caseSensitive: false)); // true
  /// print('FALSE'.isBool(caseSensitive: false)); // true
  /// print('NO'.isBool()); // false
  /// print('YES'.isBool()); // false
  /// print('0'.isBool()); // false
  /// print('1'.isBool()); // false
  /// ```
  bool isBool({bool caseSensitive = true}) =>
      bool.tryParse(this, caseSensitive: caseSensitive) != null;

  /// Converts the string into a Boolean
  ///
  /// Throws if the string is not a Boolean.
  /// If [caseSensitive] is `true`, which is the default,
  /// the only accepted inputs are the strings `"true"` and `"false"`,
  bool toBool({bool caseSensitive = true}) =>
      bool.parse(this, caseSensitive: caseSensitive);

  /// Indicates if the string is a number
  ///
  /// print('2021'.isNum()); // true
  /// print('3.14'.isNum()); // true
  /// print('  3.14 \xA0'.isNum()); // true
  /// print('0.'.isNum()); // true
  /// print('.0'.isNum()); // true
  /// print('-1.e3'.isNum()); // true
  /// print('1234E+7'.isNum()); // true
  /// print('+.12e-9'.isNum()); // true
  /// print('-NaN'.isNum()); // true
  /// print('0xFF'.isNum()); // true
  /// print(double.infinity.toString().isNum()); // true
  /// print('1f'.isNum()); // false
  bool isNum() => num.tryParse(this) != null;

  /// Converts the string into a [num]
  ///
  /// Throws if the string is not a number.
  num toNum() => num.parse(this);

  /// Indicates if the string is a double number
  bool isDouble() => double.tryParse(this) != null;

  /// Converts the string into an [double]
  ///
  /// Throws if the string is not an Double number.
  double toDouble() => double.parse(this);

  /// Indicates if the string is an integer number
  bool isInt() => int.tryParse(this) != null;

  /// Converts the string into an [int]
  ///
  /// Throws if the string is not an Integer.
  int toInt() => int.parse(this);

  /// Removes all the whitespace from the string
  String removeAllWhitespace() => replaceAll(' ', '');

  /// Checks whether this regular expression has a match in the [pattern].
  bool hasMatch(String pattern) => RegExp(pattern).hasMatch(this);
}
