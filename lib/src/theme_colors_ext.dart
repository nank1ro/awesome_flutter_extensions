import 'package:flutter/material.dart';

/// Helper extension that allows to use a color like:
/// `context.colors.primary`
extension ThemeColors on BuildContext {
  /// The list of colors available from the theme
  _ThemeColors get colors => _ThemeColors(
        primary: _primaryColor,
        primaryLight: _primaryColorLight,
        primaryDark: _primaryColorDark,
        secondary: _secondaryColor,
        canvas: _canvasColor,
        shadow: _shadowColor,
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
        background: _backgroundColor,
        dialogBackground: _dialogBackgroundColor,
        indicator: _indicatorColor,
        hint: _hintColor,
        error: _errorColor,
        scheme: _colorScheme,
        inversePrimary: _inversePrimaryColor,
        inverseSurface: _inverseSurfaceColor,
        onBackground: _onBackgroundColor,
        onError: _onErrorColor,
        onInverseSurface: _onInverseSurfaceColor,
        onPrimary: _onPrimaryColor,
        onSecondary: _onSecondaryColor,
        onSurface: _onSurfaceColor,
        onSurfaceVariant: _onSurfaceVariantColor,
        onTertiary: _onTertiaryColor,
        outline: _outlineColor,
        scrim: _scrimColor,
        outlineVariant: _outlineVariantColor,
        surface: _surfaceColor,
        surfaceTint: _surfaceTintColor,
        surfaceVariant: _surfaceVariantColor,
        tertiary: _tertiaryColor,
        errorContainer: _errorContainerColor,
        onErrorContainer: _onErrorContainerColor,
        onPrimaryContainer: _onPrimaryContainerColor,
        onSecondaryContainer: _onSecondaryContainerColor,
        onTertiaryContainer: _onTertiaryContainerColor,
        primaryContainer: _primaryContainerColor,
        secondaryContainer: _secondaryContainerColor,
        tertiaryContainer: _tertiaryContainerColor,
      );

  ThemeData get _theme => Theme.of(this);

  ColorScheme get _colorScheme => _theme.colorScheme;
  // primary
  Color get _primaryColor => _theme.colorScheme.primary;
  Color get _onPrimaryColor => _theme.colorScheme.onPrimary;
  Color get _primaryColorLight => _theme.primaryColorLight;
  Color get _primaryColorDark => _theme.primaryColorDark;
  Color get _primaryContainerColor => _theme.colorScheme.primaryContainer;
  Color get _onPrimaryContainerColor => _theme.colorScheme.onPrimaryContainer;

  // secondary
  Color get _secondaryColor => _theme.colorScheme.secondary;
  Color get _onSecondaryColor => _theme.colorScheme.onSecondary;
  Color get _secondaryHeaderColor => _theme.secondaryHeaderColor;
  Color get _secondaryContainerColor => _theme.colorScheme.secondaryContainer;
  Color get _onSecondaryContainerColor =>
      _theme.colorScheme.onSecondaryContainer;

  // tertiary
  Color get _tertiaryColor => _theme.colorScheme.tertiary;
  Color get _onTertiaryColor => _theme.colorScheme.onTertiary;
  Color get _tertiaryContainerColor => _theme.colorScheme.tertiaryContainer;
  Color get _onTertiaryContainerColor => _theme.colorScheme.onTertiaryContainer;

  // error
  Color get _errorColor => _theme.colorScheme.error;
  Color get _onErrorColor => _theme.colorScheme.onError;
  Color get _errorContainerColor => _theme.colorScheme.errorContainer;
  Color get _onErrorContainerColor => _theme.colorScheme.onErrorContainer;

  // background
  Color get _backgroundColor => _theme.colorScheme.background;
  Color get _onBackgroundColor => _theme.colorScheme.onBackground;

  // surface
  Color get _surfaceColor => _theme.colorScheme.surface;
  Color get _onSurfaceColor => _theme.colorScheme.onSurface;
  Color get _surfaceVariantColor => _theme.colorScheme.surfaceVariant;
  Color get _onSurfaceVariantColor => _theme.colorScheme.onSurfaceVariant;
  Color get _surfaceTintColor => _theme.colorScheme.surfaceTint;

  // outline
  Color get _outlineColor => _theme.colorScheme.outline;
  Color get _outlineVariantColor => _theme.colorScheme.outlineVariant;

  // shadow
  Color get _shadowColor => _theme.colorScheme.shadow;

  Color get _scrimColor => _theme.colorScheme.scrim;

  // on inverse surface
  Color get _inverseSurfaceColor => _theme.colorScheme.inverseSurface;
  Color get _onInverseSurfaceColor => _theme.colorScheme.onInverseSurface;
  Color get _inversePrimaryColor => _theme.colorScheme.inversePrimary;

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
  Color get _dialogBackgroundColor => _theme.dialogBackgroundColor;
  Color get _indicatorColor => _theme.indicatorColor;
  Color get _hintColor => _theme.hintColor;
}

/// Helper class that allows to use a color like:
/// `context.colors.primary`
class _ThemeColors {
  const _ThemeColors({
    required this.primary,
    required this.primaryLight,
    required this.primaryDark,
    required this.secondary,
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
    required this.background,
    required this.dialogBackground,
    required this.indicator,
    required this.hint,
    required this.error,
    required this.scheme,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.scrim,
    required this.inverseSurface,
    required this.onInverseSurface,
    required this.inversePrimary,
    required this.onPrimary,
    required this.tertiary,
    required this.onTertiary,
    required this.onError,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.surfaceTint,
    required this.outline,
    required this.outlineVariant,
    required this.onSecondary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.onTertiaryContainer,
    required this.tertiaryContainer,
    required this.errorContainer,
    required this.onErrorContainer,
  });

  /// See [ThemeData.primaryColor].
  final Color primary;

  /// See [ThemeData.primaryColorLight].
  final Color primaryLight;

  /// See [ThemeData.primaryColorDark].
  final Color primaryDark;

  /// See [ThemeData.colorScheme.secondary].
  final Color secondary;

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

  /// See [ThemeData.colorScheme.backgroundColor].
  final Color background;

  /// See [ThemeData.dialogBackgroundColor].
  final Color dialogBackground;

  /// See [ThemeData.indicatorColor].
  final Color indicator;

  /// See [ThemeData.hintColor].
  final Color hint;

  /// See [ThemeData.colorScheme.errorColor].
  final Color error;

  /// See [ThemeData.colorScheme].
  final ColorScheme scheme;

  /// See [ThemeData.colorScheme.onBackground].
  final Color onBackground;

  /// See [ThemeData.colorScheme.surface].
  final Color surface;

  /// See [ThemeData.colorScheme.onSurface].
  final Color onSurface;

  /// See [ThemeData.colorScheme.scrim].
  final Color scrim;

  /// See [ThemeData.colorScheme.inverseSurface].
  final Color inverseSurface;

  /// See [ThemeData.colorScheme.onInverseSurface].
  final Color onInverseSurface;

  /// See [ThemeData.colorScheme.inversePrimary].
  final Color inversePrimary;

  /// See [ThemeData.colorScheme.onPrimary].
  final Color onPrimary;

  /// See [ThemeData.colorScheme.tertiary].
  final Color tertiary;

  /// See [ThemeData.colorScheme.onTertiary].
  final Color onTertiary;

  /// See [ThemeData.colorScheme.onError].
  final Color onError;

  /// See [ThemeData.colorScheme.surfaceVariant].
  final Color surfaceVariant;

  /// See [ThemeData.colorScheme.onSurfaceVariant].
  final Color onSurfaceVariant;

  /// See [ThemeData.colorScheme.surfaceTint].
  final Color surfaceTint;

  /// See [ThemeData.colorScheme.outline].
  final Color outline;

  /// See [ThemeData.colorScheme.outlineVariant].
  final Color outlineVariant;

  /// See [ThemeData.colorScheme.onSecondary].
  final Color onSecondary;

  /// See [ThemeData.colorScheme.primaryContainer].
  final Color primaryContainer;

  /// See [ThemeData.colorScheme.onPrimaryContainer].
  final Color onPrimaryContainer;

  /// See [ThemeData.colorScheme.secondaryContainer].
  final Color secondaryContainer;

  /// See [ThemeData.colorScheme.onSecondaryContainer].
  final Color onSecondaryContainer;

  /// See [ThemeData.colorScheme.onTertiaryContainer].
  final Color onTertiaryContainer;

  /// See [ThemeData.colorScheme.tertiaryContainer].
  final Color tertiaryContainer;

  /// See [ThemeData.colorScheme.errorContainer].
  final Color errorContainer;

  /// See [ThemeData.colorScheme.onErrorContainer].
  final Color onErrorContainer;
}
