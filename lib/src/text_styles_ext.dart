import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Helper extension that allows to use a text style like:
/// `context.textStyles.h1`
extension TextStyles on BuildContext {
  /// The list of text styles available to the app
  _TextStyles get textStyles => _TextStyles(
        h1: _h1,
        h2: _h2,
        h3: _h3,
        h4: _h4,
        h5: _h5,
        h6: _h6,
        bodyText1: _bodyText1,
        bodyText2: _bodyText2,
        caption: _caption,
        button: _button,
        subtitle1: _subtitle1,
        subtitle2: _subtitle2,
        overline: _overline,
      );

  TextTheme get _textTheme => Theme.of(this).textTheme;

  TextStyle get _h1 => _textTheme.headline1!;
  TextStyle get _h2 => _textTheme.headline2!;
  TextStyle get _h3 => _textTheme.headline3!;
  TextStyle get _h4 => _textTheme.headline4!;
  TextStyle get _h5 => _textTheme.headline5!;
  TextStyle get _h6 => _textTheme.headline6!;
  TextStyle get _bodyText1 => _textTheme.bodyText1!;
  TextStyle get _bodyText2 => _textTheme.bodyText2!;
  TextStyle get _caption => _textTheme.caption!;
  TextStyle get _button => _textTheme.button!;
  TextStyle get _subtitle1 => _textTheme.subtitle1!;
  TextStyle get _subtitle2 => _textTheme.subtitle2!;
  TextStyle get _overline => _textTheme.overline!;
}

class _TextStyles {
  _TextStyles({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.bodyText1,
    required this.bodyText2,
    required this.caption,
    required this.button,
    required this.overline,
    required this.subtitle1,
    required this.subtitle2,
  });

  /// See [TextTheme.headline1].
  final TextStyle h1;

  /// See [TextTheme.headline2].
  final TextStyle h2;

  /// See [TextTheme.headline3].
  final TextStyle h3;

  /// See [TextTheme.headline4].
  final TextStyle h4;

  /// See [TextTheme.headline5].
  final TextStyle h5;

  /// See [TextTheme.headline6].
  final TextStyle h6;

  /// See [TextTheme.bodyText1].
  final TextStyle bodyText1;

  /// See [TextTheme.bodyText2].
  final TextStyle bodyText2;

  /// See [TextTheme.caption].
  final TextStyle caption;

  /// See [TextTheme.button].
  final TextStyle button;

  /// See [TextTheme.overline].
  final TextStyle overline;

  /// See [TextTheme.subtitle1].
  final TextStyle subtitle1;

  /// See [TextTheme.subtitle2].
  final TextStyle subtitle2;
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
