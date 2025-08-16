import 'package:flutter/material.dart';

/// Helper extension that allows to use a color like:
/// `context.colors.primary`
extension ThemeColors on BuildContext {
  /// The list of colors available from the theme
  _ThemeColors get colors => _ThemeColors(
        primary: _primaryColor,
        primaryLight: _primaryColorLight,
        primaryDark: _primaryColorDark,
        canvas: _canvasColor,
        scaffoldBackground: _scaffoldBackgroundColor,
        card: _cardColor,
        divider: _dividerColor,
        focus: _focusColor,
        hover: _hoverColor,
        highlight: _highlightColor,
        splash: _splashColor,
        unselectedWidget: _unselectedWidgetColor,
        disabled: _disabledColor,
        secondaryHeader: _secondaryHeaderColor,
        // ignore: deprecated_member_use_from_same_package
        dialogBackground: _dialogBackgroundColor,
        // ignore: deprecated_member_use_from_same_package
        indicator: _indicatorColor,
        hint: _hintColor,
        scheme: _colorScheme,
        shadow: _shadowColor,
      );

  ThemeData get _theme => Theme.of(this);

  ColorScheme get _colorScheme => _theme.colorScheme;
  // primary
  Color get _primaryColor => _theme.primaryColor;
  Color get _primaryColorLight => _theme.primaryColorLight;
  Color get _primaryColorDark => _theme.primaryColorDark;

  // secondary
  Color get _secondaryHeaderColor => _theme.secondaryHeaderColor;

  Color get _canvasColor => _theme.canvasColor;
  Color get _scaffoldBackgroundColor => _theme.scaffoldBackgroundColor;
  Color get _cardColor => _theme.cardColor;
  Color get _dividerColor => _theme.dividerColor;
  Color get _focusColor => _theme.focusColor;
  Color get _hoverColor => _theme.hoverColor;
  Color get _highlightColor => _theme.highlightColor;
  Color get _splashColor => _theme.splashColor;
  Color get _unselectedWidgetColor => _theme.unselectedWidgetColor;
  Color get _disabledColor => _theme.disabledColor;
  @Deprecated(
    'Use DialogThemeData.backgroundColor instead. '
    'This feature was deprecated after v3.27.0-0.1.pre.',
  )
  Color get _dialogBackgroundColor => _theme.dialogBackgroundColor;
  @Deprecated(
    'Use TabBarThemeData.indicatorColor instead. '
    'This feature was deprecated after v3.28.0-1.0.pre.',
  )
  Color get _indicatorColor => _theme.indicatorColor;
  Color get _hintColor => _theme.hintColor;
  Color get _shadowColor => _theme.shadowColor;
}

/// Helper class that allows to use a color like:
/// `context.colors.primary`
class _ThemeColors {
  const _ThemeColors({
    required this.primary,
    required this.primaryLight,
    required this.primaryDark,
    required this.canvas,
    required this.shadow,
    required this.scaffoldBackground,
    required this.card,
    required this.divider,
    required this.focus,
    required this.hover,
    required this.highlight,
    required this.splash,
    required this.unselectedWidget,
    required this.disabled,
    required this.secondaryHeader,
    required this.dialogBackground,
    required this.indicator,
    required this.hint,
    required this.scheme,
  });

  /// See [ThemeData.primaryColor].
  final Color primary;

  /// See [ThemeData.primaryColorLight].
  final Color primaryLight;

  /// See [ThemeData.primaryColorDark].
  final Color primaryDark;

  /// See [ThemeData.canvasColor].
  final Color canvas;

  /// See [ThemeData.shadowColor].
  final Color shadow;

  /// See [ThemeData.scaffoldBackgroundColor].
  final Color scaffoldBackground;

  /// See [ThemeData.cardColor].
  final Color card;

  /// See [ThemeData.dividerColor].
  final Color divider;

  /// See [ThemeData.focusColor].
  final Color focus;

  /// See [ThemeData.hoverColor].
  final Color hover;

  /// See [ThemeData.highlightColor].
  final Color highlight;

  /// See [ThemeData.splashColor].
  final Color splash;

  /// See [ThemeData.unselectedWidgetColor].
  final Color unselectedWidget;

  /// See [ThemeData.disabledColor].
  final Color disabled;

  /// See [ThemeData.secondaryHeaderColor].
  final Color secondaryHeader;

  // ignore: deprecated_member_use
  /// See [ThemeData.dialogBackgroundColor].
  final Color dialogBackground;

  // ignore: deprecated_member_use
  /// See [ThemeData.indicatorColor].
  final Color indicator;

  /// See [ThemeData.hintColor].
  final Color hint;

  /// See [ThemeData.colorScheme].
  final ColorScheme scheme;
}
