/// Int extensions
extension IntExt on int {
  /// Converts [int] into English ordinal representation
  /// ``` dart
  /// print(1.ordinal); // 1st
  /// print(22.ordinal); // 22nd
  /// print(143.ordinal); // 143rd
  /// print(0.ordinal); // 0th
  /// print(12.ordinal); // 12th
  /// print(69.ordinal); // 69th
  /// ```
  String get ordinal {
    return switch (this % 100) {
      11 || 12 || 13 => '${this}th',
      _ => switch (this % 10) {
          1 => '${this}st',
          2 => '${this}nd',
          3 => '${this}rd',
          _ => '${this}th'
        }
    };
  }

  /// Returns roman number representation of [int] from 1 to 3999
  /// ``` dart
  /// print(12.roman); // XII
  /// print(455.roman); // CDLV
  /// print(1.roman); // I
  /// print(3999.roman); // MMMCMXCIX
  /// ```
  String get roman {
    if (this < 1 || this > 3999) {
      throw Exception('Number out of range (1 to 3999)');
    }

    const romanTable = {
      'M': 1000,
      'CM': 900,
      'D': 500,
      'CD': 400,
      'C': 100,
      'XC': 90,
      'L': 50,
      'XL': 40,
      'X': 10,
      'IX': 9,
      'V': 5,
      'IV': 4,
      'I': 1,
    };

    final result = StringBuffer();
    var n = this;
    for (final entry in romanTable.entries) {
      final numeral = entry.key;
      final value = entry.value;
      while (n >= value) {
        result.write(numeral);
        n -= value;
      }
    }
    return result.toString();
  }
}
