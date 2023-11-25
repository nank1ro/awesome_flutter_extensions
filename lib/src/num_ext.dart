/// Int extensions
extension IntExt on int {
  /// Returns ordinal of [int]
  /// ``` dart
  /// print(1.ordinal); // 1st
  /// print(22.ordinal); // 22nd
  /// print(143.ordinal); // 143rd
  /// print(0.ordinal); // 0th
  /// print((-1).ordinal); // -1st
  /// print(12.ordinal); // 12th
  /// print(69.ordinal); // 69th
  /// ```
  String get ordinal {
    if (this < 0) {
      return '-${(-this).ordinal}';
    }
    if (this % 100 >= 11 && this % 100 <= 13) {
      return '${this}th';
    }
    switch (this % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }

  /// Returns roman number representation of [int] from 1 to 3999
  /// ``` dart
  /// print(12.toRoman); // XII
  /// print(455.toRoman); // CDLV
  /// print(1.toRoman); // I
  /// print(3999.toRoman); // MMMCMXCIX
  /// ```
  String get toRoman {
    if (this < 1 || this > 3999) {
      throw Exception('Number out of range (1 to 3999)');
    }

    final romanNumerals = [
      'I',
      'IV',
      'V',
      'IX',
      'X',
      'XL',
      'L',
      'XC',
      'C',
      'CD',
      'D',
      'CM',
      'M',
    ];
    final decimalValues = [
      1,
      4,
      5,
      9,
      10,
      40,
      50,
      90,
      100,
      400,
      500,
      900,
      1000,
    ];

    final resultBuffer = StringBuffer();
    var index = 12;
    var temp = this;

    while (temp > 0) {
      final div = temp ~/ decimalValues[index];
      temp %= decimalValues[index];
      resultBuffer.write(romanNumerals[index--] * div);
    }

    return resultBuffer.toString();
  }
}
