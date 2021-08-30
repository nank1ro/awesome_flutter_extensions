import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Helper extension that allows to use a navigator like:
/// `context.push(SomePage())`
extension NavigatorX on BuildContext {
  NavigatorState get _navigator => Navigator.of(this);

  /// See [NavigatorState.canPop].
  Function get canPop => _navigator.canPop;

  /// See [NavigatorState.maybePop].
  Future<bool> Function<T extends Object?>([T? result]) get maybePop =>
      _navigator.maybePop;

  /// See [NavigatorState.pop].
  Function<T extends Object?>([T? result]) get pop => _navigator.pop;

  /// See [NavigatorState.popUntil].
  Function(RoutePredicate predicate) get popUntil => _navigator.popUntil;

  /// See [NavigatorState.push].
  Future<T?> Function<T extends Object?>(Route<T> route) get push =>
      _navigator.push;

  /// See [NavigatorState.popAndPushNamed].
  Future<T?> Function<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) get popAndPushNamed => _navigator.popAndPushNamed;

  /// See [NavigatorState.pushAndRemoveUntil].
  Future<T?> Function<T extends Object?>(
          Route<T> newRoute, RoutePredicate predicate)
      get pushAndRemoveUntil => _navigator.pushAndRemoveUntil;

  /// See [NavigatorState.pushNamed].
  Future<T?> Function<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) get pushNamed => _navigator.pushNamed;

  /// See [NavigatorState.pushNamedAndRemoveUntil].
  Future<T?> Function<T extends Object?>(
    String newRouteName,
    RoutePredicate predicate, {
    Object? arguments,
  }) get pushNamedAndRemoveUntil => _navigator.pushNamedAndRemoveUntil;

  /// See [NavigatorState.pushReplacement].
  Future<T?> Function<T extends Object?, TO extends Object?>(Route<T> newRoute,
      {TO? result}) get pushReplacement => _navigator.pushReplacement;

  /// See [NavigatorState.pushReplacementNamed].
  Future<T?> Function<T extends Object?, TO extends Object?>(String routeName,
          {TO? result, Object? arguments})
      get pushReplacementNamed => _navigator.pushReplacementNamed;

  /// See [NavigatorState.removeRoute].
  Function(Route<dynamic> route) get removeRoute => _navigator.removeRoute;

  /// See [NavigatorState.removeRouteBelow].
  Function(Route<dynamic> anchorRoute) get removeRouteBelow =>
      _navigator.removeRouteBelow;

  /// See [NavigatorState.replace].
  Function<T extends Object?>(
      {required Route<dynamic> oldRoute,
      required Route<T> newRoute}) get replace => _navigator.replace;

  /// See [NavigatorState.replaceRouteBelow].
  Function<T extends Object?>(
          {required Route<dynamic> anchorRoute, required Route<T> newRoute})
      get replaceRouteBelow => _navigator.replaceRouteBelow;
}

/// Helper extension that allows to use a size like:
/// `context.width`
extension Sizes on BuildContext {
  MediaQueryData get _mediaQuery => MediaQuery.of(this);

  /// See [Size.width].
  double get width => _mediaQuery.size.width;

  /// See [Size.height].
  double get height => _mediaQuery.size.height;

  /// See [MediaQueryData.padding].
  EdgeInsets get padding => _mediaQuery.padding;

  /// See [MediaQueryData.viewInsets].
  EdgeInsets get viewInsets => _mediaQuery.viewInsets;

  /// See [MediaQueryData.systemGestureInsets].
  EdgeInsets get systemGestureInsets => _mediaQuery.systemGestureInsets;

  /// See [MediaQueryData.viewPadding].
  EdgeInsets get viewPadding => _mediaQuery.viewPadding;

  /// See [MediaQueryData.devicePixelRatio].
  double get devicePixelRatio => _mediaQuery.devicePixelRatio;

  /// See [MediaQueryData.devicePixelRatio].
  double get textScaleFactor => _mediaQuery.textScaleFactor;
}

/// Helper extension that allows to use a text style like:
/// `context.h1`
extension TextStyles on BuildContext {
  TextTheme get _textTheme => Theme.of(this).textTheme;

  /// See [TextTheme.headline1].
  TextStyle get h1 => _textTheme.headline1!;

  /// See [TextTheme.headline2].
  TextStyle get h2 => _textTheme.headline2!;

  /// See [TextTheme.headline3].
  TextStyle get h3 => _textTheme.headline3!;

  /// See [TextTheme.headline4].
  TextStyle get h4 => _textTheme.headline4!;

  /// See [TextTheme.headline5].
  TextStyle get h5 => _textTheme.headline5!;

  /// See [TextTheme.headline6].
  TextStyle get h6 => _textTheme.headline6!;

  /// See [TextTheme.bodyText1].
  TextStyle get bodyText1 => _textTheme.bodyText1!;

  /// See [TextTheme.bodyText2].
  TextStyle get bodyText2 => _textTheme.bodyText2!;

  /// See [TextTheme.caption].
  TextStyle get caption => _textTheme.caption!;

  /// See [TextTheme.button].
  TextStyle get button => _textTheme.button!;

  /// See [TextTheme.subtitle1].
  TextStyle get subtitle1 => _textTheme.subtitle1!;

  /// See [TextTheme.subtitle2].
  TextStyle get subtitle2 => _textTheme.subtitle2!;

  /// See [TextTheme.overline].
  TextStyle get overline => _textTheme.overline!;
}

/// Converts in a simple way a textStyle to the desired font weight.
///
/// Example usage:
/// `context.h1.semiBold`
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
/// `context.h1.italic`
extension FontStyles on TextStyle {
  /// Use the upright glyphs
  TextStyle get normal => copyWith(fontStyle: FontStyle.normal);

  /// Use glyphs designed for slanting
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}

/// Helper extension that allows to use a color like:
/// `context.primaryColor`
extension ThemeColors on BuildContext {
  ThemeData get _theme => Theme.of(this);

  /// See [ThemeData.colorScheme].
  ColorScheme get colorScheme => _theme.colorScheme;

  /// See [ThemeData.primaryColor].
  Color get primaryColor => _theme.primaryColor;

  /// See [ThemeData.primaryColorLight].

  Color get primaryColorLight => _theme.primaryColorLight;

  /// See [ThemeData.primaryColorDark].
  Color get primaryColorDark => _theme.primaryColorDark;

  /// See [ThemeData.canvasColor].
  Color get accentColor => _theme.accentColor;

  /// See [ThemeData.canvasColor].
  Color get canvasColor => _theme.canvasColor;

  /// See [ThemeData.shadowColor].
  Color get shadowColor => _theme.shadowColor;

  /// See [ThemeData.scaffoldBackgroundColor].
  Color get scaffoldBackgroundColor => _theme.scaffoldBackgroundColor;

  /// See [ThemeData.bottomAppBarColor].
  Color get bottomAppBarColor => _theme.bottomAppBarColor;

  /// See [ThemeData.cardColor].
  Color get cardColor => _theme.cardColor;

  /// See [ThemeData.dividerColor].
  Color get dividerColor => _theme.dividerColor;

  /// See [ThemeData.focusColor].
  Color get focusColor => _theme.focusColor;

  /// See [ThemeData.hoverColor].
  Color get hoverColor => _theme.hoverColor;

  /// See [ThemeData.highlightColor].
  Color get highlightColor => _theme.highlightColor;

  /// See [ThemeData.splashColor].
  Color get splashColor => _theme.splashColor;

  /// See [ThemeData.selectedRowColor].
  Color get selectedRowColor => _theme.selectedRowColor;

  /// See [ThemeData.unselectedWidgetColor].
  Color get unselectedWidgetColor => _theme.unselectedWidgetColor;

  /// See [ThemeData.disabledColor].
  Color get disabledColor => _theme.disabledColor;

  /// See [ThemeData.buttonColor].
  Color get buttonColor => _theme.buttonColor;

  /// See [ThemeData.secondaryHeaderColor].
  Color get secondaryHeaderColor => _theme.secondaryHeaderColor;

  /// See [ThemeData.backgroundColor].
  Color get backgroundColor => _theme.backgroundColor;

  /// See [ThemeData.dialogBackgroundColor].
  Color get dialogBackgroundColor => _theme.dialogBackgroundColor;

  /// See [ThemeData.indicatorColor].
  Color get indicatorColor => _theme.indicatorColor;

  /// See [ThemeData.hintColor].
  Color get hintColor => _theme.hintColor;

  /// See [ThemeData.errorColor].
  Color get errorColor => _theme.errorColor;

  /// See [ThemeData.toggleableActiveColor].
  Color get toggleableActiveColor => _theme.toggleableActiveColor;
}

/// Helper extension that allows to use a text style like:
/// `context.textTheme`
extension Themes on BuildContext {
  ThemeData get _themeData => Theme.of(this);

  /// See [ThemeData.textTheme].
  TextTheme get textTheme => _themeData.textTheme;

  /// See [ThemeData.buttonTheme].
  ButtonThemeData get buttonTheme => _themeData.buttonTheme;

  /// See [ThemeData.toggleButtonsTheme].
  ToggleButtonsThemeData get toggleButtonsTheme =>
      _themeData.toggleButtonsTheme;

  /// See [ThemeData.primaryTextTheme].
  TextTheme get primaryTextTheme => _themeData.primaryTextTheme;

  /// See [ThemeData.accentTextTheme].
  TextTheme get accentTextTheme => _themeData.accentTextTheme;

  /// See [ThemeData.iconTheme].
  IconThemeData get iconTheme => _themeData.iconTheme;

  /// See [ThemeData.inputDecorationTheme].
  InputDecorationTheme get inputDecorationTheme =>
      _themeData.inputDecorationTheme;

  /// See [ThemeData.primaryIconTheme].
  IconThemeData get primaryIconTheme => _themeData.primaryIconTheme;

  /// See [ThemeData.accentIconTheme].
  IconThemeData get accentIconTheme => _themeData.accentIconTheme;

  /// See [ThemeData.sliderTheme].
  SliderThemeData get sliderTheme => _themeData.sliderTheme;

  /// See [ThemeData.tabBarTheme].
  TabBarTheme get tabBarTheme => _themeData.tabBarTheme;

  /// See [ThemeData.tooltipTheme].
  TooltipThemeData get tooltipTheme => _themeData.tooltipTheme;

  /// See [ThemeData.cardTheme].
  CardTheme get cardTheme => _themeData.cardTheme;

  /// See [ThemeData.chipTheme].
  ChipThemeData get chipTheme => _themeData.chipTheme;

  /// See [ThemeData.appBarTheme].
  AppBarTheme get appBarTheme => _themeData.appBarTheme;

  /// See [ThemeData.scrollbarTheme].
  ScrollbarThemeData get scrollbarTheme => _themeData.scrollbarTheme;

  /// See [ThemeData.bottomAppBarTheme].
  BottomAppBarTheme get bottomAppBarTheme => _themeData.bottomAppBarTheme;

  /// See [ThemeData.dialogTheme].
  DialogTheme get dialogTheme => _themeData.dialogTheme;

  /// See [ThemeData.floatingActionButtonTheme].
  FloatingActionButtonThemeData get floatingActionButtonTheme =>
      _themeData.floatingActionButtonTheme;

  /// See [ThemeData.navigationRailTheme].
  NavigationRailThemeData get navigationRailTheme =>
      _themeData.navigationRailTheme;

  /// See [ThemeData.cupertinoOverrideTheme].
  NoDefaultCupertinoThemeData? get cupertinoOverrideTheme =>
      _themeData.cupertinoOverrideTheme;

  /// See [ThemeData.snackBarTheme].
  SnackBarThemeData get snackBarTheme => _themeData.snackBarTheme;

  /// See [ThemeData.bottomSheetTheme].
  BottomSheetThemeData get bottomSheetTheme => _themeData.bottomSheetTheme;

  /// See [ThemeData.popupMenuTheme].
  PopupMenuThemeData get popupMenuTheme => _themeData.popupMenuTheme;

  /// See [ThemeData.bannerTheme].
  MaterialBannerThemeData get bannerTheme => _themeData.bannerTheme;

  /// See [ThemeData.dividerTheme].
  DividerThemeData get dividerTheme => _themeData.dividerTheme;

  /// See [ThemeData.buttonBarTheme].
  ButtonBarThemeData get buttonBarTheme => _themeData.buttonBarTheme;

  /// See [ThemeData.bottomNavigationBarTheme].
  BottomNavigationBarThemeData get bottomNavigationBarTheme =>
      _themeData.bottomNavigationBarTheme;

  /// See [ThemeData.timePickerTheme].
  TimePickerThemeData get timePickerTheme => _themeData.timePickerTheme;

  /// See [ThemeData.textButtonTheme].
  TextButtonThemeData get textButtonTheme => _themeData.textButtonTheme;

  /// See [ThemeData.elevatedButtonTheme].
  ElevatedButtonThemeData get elevatedButtonTheme =>
      _themeData.elevatedButtonTheme;

  /// See [ThemeData.outlinedButtonTheme].
  OutlinedButtonThemeData get outlinedButtonTheme =>
      _themeData.outlinedButtonTheme;

  /// See [ThemeData.textSelectionTheme].
  TextSelectionThemeData get textSelectionTheme =>
      _themeData.textSelectionTheme;

  /// See [ThemeData.dataTableTheme].
  DataTableThemeData get dataTableTheme => _themeData.dataTableTheme;

  /// See [ThemeData.checkboxTheme].
  CheckboxThemeData get checkboxTheme => _themeData.checkboxTheme;

  /// See [ThemeData.radioTheme].
  RadioThemeData get radioTheme => _themeData.radioTheme;

  /// See [ThemeData.switchTheme].
  SwitchThemeData get switchTheme => _themeData.switchTheme;
}
