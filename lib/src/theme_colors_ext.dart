import 'package:flutter/material.dart';

/// Helper extension that allows to use a text style like:
/// `context.colors.primary`
extension ThemeColors on BuildContext {
  /// The list of colors available from the theme
  _ThemeColors get colors => _ThemeColors(
        primary: _primaryColor,
        primaryLight: _primaryColorLight,
        primaryDark: _primaryColorDark,
        accent: _accentColor,
        canvas: _canvasColor,
        shadow: _shadowColor,
        scaffoldBackground: _scaffoldBackgroundColor,
        bottomAppBar: _bottomAppBarColor,
        card: _cardColor,
        divider: _dividerColor,
        focus: _focusColor,
        hover: _hoverColor,
        highlight: _highlightColor,
        splash: _splashColor,
        selectedRow: _selectedRowColor,
        unselectedWidget: _unselectedWidgetColor,
        disabled: _disabledColor,
        button: _buttonColor,
        secondaryHeader: _secondaryHeaderColor,
        background: _backgroundColor,
        dialogBackground: _dialogBackgroundColor,
        indicator: _indicatorColor,
        hint: _hintColor,
        error: _errorColor,
        toggleableActive: _toggleableActiveColor,
        scheme: _colorScheme,
      );

  ThemeData get _theme => Theme.of(this);

  ColorScheme get _colorScheme => _theme.colorScheme;
  Color get _primaryColor => _theme.primaryColor;
  Color get _primaryColorLight => _theme.primaryColorLight;
  Color get _primaryColorDark => _theme.primaryColorDark;
  Color get _accentColor => _theme.accentColor;
  Color get _canvasColor => _theme.canvasColor;
  Color get _shadowColor => _theme.shadowColor;
  Color get _scaffoldBackgroundColor => _theme.scaffoldBackgroundColor;
  Color get _bottomAppBarColor => _theme.bottomAppBarColor;
  Color get _cardColor => _theme.cardColor;
  Color get _dividerColor => _theme.dividerColor;
  Color get _focusColor => _theme.focusColor;
  Color get _hoverColor => _theme.hoverColor;
  Color get _highlightColor => _theme.highlightColor;
  Color get _splashColor => _theme.splashColor;
  Color get _selectedRowColor => _theme.selectedRowColor;
  Color get _unselectedWidgetColor => _theme.unselectedWidgetColor;
  Color get _disabledColor => _theme.disabledColor;
  Color get _buttonColor => _theme.buttonColor;
  Color get _secondaryHeaderColor => _theme.secondaryHeaderColor;
  Color get _backgroundColor => _theme.backgroundColor;
  Color get _dialogBackgroundColor => _theme.dialogBackgroundColor;
  Color get _indicatorColor => _theme.indicatorColor;
  Color get _hintColor => _theme.hintColor;
  Color get _errorColor => _theme.errorColor;
  Color get _toggleableActiveColor => _theme.toggleableActiveColor;
}

/// Helper class that allows to use a color like:
/// `context.colors.primary`
class _ThemeColors {
  const _ThemeColors({
    required this.primary,
    required this.primaryLight,
    required this.primaryDark,
    required this.accent,
    required this.canvas,
    required this.shadow,
    required this.scaffoldBackground,
    required this.bottomAppBar,
    required this.card,
    required this.divider,
    required this.focus,
    required this.hover,
    required this.highlight,
    required this.splash,
    required this.selectedRow,
    required this.unselectedWidget,
    required this.disabled,
    required this.button,
    required this.secondaryHeader,
    required this.background,
    required this.dialogBackground,
    required this.indicator,
    required this.hint,
    required this.error,
    required this.toggleableActive,
    required this.scheme,
  });

  /// See [ThemeData.primaryColor].
  final Color primary;

  /// See [ThemeData.primaryColorLight].
  final Color primaryLight;

  /// See [ThemeData.primaryColorDark].
  final Color primaryDark;

  /// See [ThemeData.accentColor].
  final Color accent;

  /// See [ThemeData.canvasColor].
  final Color canvas;

  /// See [ThemeData.shadowColor].
  final Color shadow;

  /// See [ThemeData.scaffoldBackgroundColor].
  final Color scaffoldBackground;

  /// See [ThemeData.bottomAppBarColor].
  final Color bottomAppBar;

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

  /// See [ThemeData.selectedRowColor].
  final Color selectedRow;

  /// See [ThemeData.unselectedWidgetColor].
  final Color unselectedWidget;

  /// See [ThemeData.disabledColor].
  final Color disabled;

  /// See [ThemeData.buttonColor].
  final Color button;

  /// See [ThemeData.secondaryHeaderColor].
  final Color secondaryHeader;

  /// See [ThemeData.backgroundColor].
  final Color background;

  /// See [ThemeData.dialogBackgroundColor].
  final Color dialogBackground;

  /// See [ThemeData.indicatorColor].
  final Color indicator;

  /// See [ThemeData.hintColor].
  final Color hint;

  /// See [ThemeData.errorColor].
  final Color error;

  /// See [ThemeData.toggleableActiveColor].
  final Color toggleableActive;

  /// See [ThemeData.colorScheme].
  final ColorScheme scheme;
}
