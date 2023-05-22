import 'package:flutter/material.dart';

/// Helper extension that allows to use a text style like:
/// `context.textStyles.h1`
extension TextStyles on BuildContext {
  /// The list of text styles available to the app
  _TextStyles get textStyles => _TextStyles(
        displayLarge: _displayLarge,
        displayMedium: _displayMedium,
        displaySmall: _displaySmall,
        headlineLarge: _headlineLarge,
        headlineMedium: _headlineMedium,
        headlineSmall: _headlineSmall,
        titleLarge: _titleLarge,
        titleMedium: _titleMedium,
        titleSmall: _titleSmall,
        bodyLarge: _bodyLarge,
        bodyMedium: _bodyMedium,
        bodySmall: _bodySmall,
        labelLarge: _labelLarge,
        labelMedium: _labelMedium,
        labelSmall: _labelSmall,
      );

  TextTheme get _textTheme => Theme.of(this).textTheme;

  TextStyle get _displayLarge => _textTheme.displayLarge!;
  TextStyle get _displayMedium => _textTheme.displayMedium!;
  TextStyle get _displaySmall => _textTheme.displaySmall!;
  TextStyle get _headlineLarge => _textTheme.headlineLarge!;
  TextStyle get _headlineMedium => _textTheme.headlineMedium!;
  TextStyle get _headlineSmall => _textTheme.headlineSmall!;
  TextStyle get _titleLarge => _textTheme.titleLarge!;
  TextStyle get _titleMedium => _textTheme.titleMedium!;
  TextStyle get _titleSmall => _textTheme.titleSmall!;
  TextStyle get _bodyLarge => _textTheme.bodyLarge!;
  TextStyle get _bodyMedium => _textTheme.bodyMedium!;
  TextStyle get _bodySmall => _textTheme.bodySmall!;
  TextStyle get _labelLarge => _textTheme.labelLarge!;
  TextStyle get _labelMedium => _textTheme.labelMedium!;
  TextStyle get _labelSmall => _textTheme.labelSmall!;
}

class _TextStyles {
  const _TextStyles({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  /// See [TextTheme.displayLarge].
  final TextStyle displayLarge;

  /// See [TextTheme.displayMedium].
  final TextStyle displayMedium;

  /// See [TextTheme.displaySmall].
  final TextStyle displaySmall;

  /// See [TextTheme.headlineLarge].
  final TextStyle headlineLarge;

  /// See [TextTheme.headlineMedium].
  final TextStyle headlineMedium;

  /// See [TextTheme.headlineSmall].
  final TextStyle headlineSmall;

  /// See [TextTheme.titleLarge].
  final TextStyle titleLarge;

  /// See [TextTheme.titleMedium].
  final TextStyle titleMedium;

  /// See [TextTheme.titleSmall].
  final TextStyle titleSmall;

  /// See [TextTheme.bodyLarge].
  final TextStyle bodyLarge;

  /// See [TextTheme.bodyMedium].
  final TextStyle bodyMedium;

  /// See [TextTheme.bodySmall].
  final TextStyle bodySmall;

  /// See [TextTheme.labelLarge].
  final TextStyle labelLarge;

  /// See [TextTheme.labelMedium].
  final TextStyle labelMedium;

  /// See [TextTheme.labelSmall].
  final TextStyle labelSmall;
}

/// Converts in a simple way a textStyle to the desired font weight.
///
/// Example usage:
/// `context.textStyles.h1.semiBold`
extension FontWeights on TextStyle {
  /// Black, the most thick
  TextStyle get thick => copyWith(fontWeight: FontWeight.w900);

  /// Extra-bold
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  /// Bold
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  /// Semi-bold
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  /// Medium
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  /// Normal, regular, plain
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  /// Light
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  /// Extra-light
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);

  /// Thin, the least thick
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
}

/// Converts in a simple way a textStyle to the desired font style.
///
/// Example usage:
/// `context.textStyles.h1.italic`
extension FontStyles on TextStyle {
  /// Use the upright glyphs
  TextStyle get normal => copyWith(fontStyle: FontStyle.normal);

  /// Use glyphs designed for slanting
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}
