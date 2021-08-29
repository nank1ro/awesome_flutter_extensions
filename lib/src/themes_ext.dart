import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Helper extension that allows to use a text style like:
/// `context.themes.icon`
extension Themes on BuildContext {
  /// The list of themes available
  _Themes get themes => _Themes(
        button: _buttonTheme,
        toggleButtons: _toggleButtonsTheme,
        text: _textTheme,
        primaryText: _primaryTextTheme,
        accentText: _accentTextTheme,
        inputDecoration: _inputDecorationTheme,
        icon: _iconTheme,
        primaryIcon: _primaryIconTheme,
        accentIcon: _accentIconTheme,
        slider: _sliderTheme,
        tabBar: _tabBarTheme,
        tooltip: _tooltipTheme,
        card: _cardTheme,
        chip: _chipTheme,
        appBar: _appBarTheme,
        scrollbar: _scrollbarTheme,
        bottomAppBar: _bottomAppBarTheme,
        dialog: _dialogTheme,
        floatingActionButton: _floatingActionButtonTheme,
        navigationRail: _navigationRailTheme,
        cupertinoOverride: _cupertinoOverrideTheme,
        snackBar: _snackBarTheme,
        bottomSheet: _bottomSheetTheme,
        popupMenu: _popupMenuTheme,
        banner: _bannerTheme,
        divider: _dividerTheme,
        buttonBar: _buttonBarTheme,
        bottomNavigationBar: _bottomNavigationBarTheme,
        timePicker: _timePickerTheme,
        textButton: _textButtonTheme,
        elevatedButton: _elevatedButtonTheme,
        outlinedButton: _outlinedButtonTheme,
        textSelection: _textSelectionTheme,
        dataTable: _dataTableTheme,
        checkbox: _checkboxTheme,
        radio: _radioTheme,
        switchTheme: _switchTheme,
      );

  ThemeData get _themeData => Theme.of(this);

  TextTheme get _textTheme => _themeData.textTheme;
  ButtonThemeData get _buttonTheme => _themeData.buttonTheme;
  ToggleButtonsThemeData get _toggleButtonsTheme =>
      _themeData.toggleButtonsTheme;
  TextTheme get _primaryTextTheme => _themeData.primaryTextTheme;
  TextTheme get _accentTextTheme => _themeData.accentTextTheme;
  IconThemeData get _iconTheme => _themeData.iconTheme;
  InputDecorationTheme get _inputDecorationTheme =>
      _themeData.inputDecorationTheme;
  IconThemeData get _primaryIconTheme => _themeData.primaryIconTheme;
  IconThemeData get _accentIconTheme => _themeData.accentIconTheme;
  SliderThemeData get _sliderTheme => _themeData.sliderTheme;
  TabBarTheme get _tabBarTheme => _themeData.tabBarTheme;
  TooltipThemeData get _tooltipTheme => _themeData.tooltipTheme;
  CardTheme get _cardTheme => _themeData.cardTheme;
  ChipThemeData get _chipTheme => _themeData.chipTheme;
  AppBarTheme get _appBarTheme => _themeData.appBarTheme;
  ScrollbarThemeData get _scrollbarTheme => _themeData.scrollbarTheme;
  BottomAppBarTheme get _bottomAppBarTheme => _themeData.bottomAppBarTheme;
  DialogTheme get _dialogTheme => _themeData.dialogTheme;
  FloatingActionButtonThemeData get _floatingActionButtonTheme =>
      _themeData.floatingActionButtonTheme;
  NavigationRailThemeData get _navigationRailTheme =>
      _themeData.navigationRailTheme;
  NoDefaultCupertinoThemeData? get _cupertinoOverrideTheme =>
      _themeData.cupertinoOverrideTheme;
  SnackBarThemeData get _snackBarTheme => _themeData.snackBarTheme;
  BottomSheetThemeData get _bottomSheetTheme => _themeData.bottomSheetTheme;
  PopupMenuThemeData get _popupMenuTheme => _themeData.popupMenuTheme;
  MaterialBannerThemeData get _bannerTheme => _themeData.bannerTheme;
  DividerThemeData get _dividerTheme => _themeData.dividerTheme;
  ButtonBarThemeData get _buttonBarTheme => _themeData.buttonBarTheme;
  BottomNavigationBarThemeData get _bottomNavigationBarTheme =>
      _themeData.bottomNavigationBarTheme;
  TimePickerThemeData get _timePickerTheme => _themeData.timePickerTheme;
  TextButtonThemeData get _textButtonTheme => _themeData.textButtonTheme;
  ElevatedButtonThemeData get _elevatedButtonTheme =>
      _themeData.elevatedButtonTheme;
  OutlinedButtonThemeData get _outlinedButtonTheme =>
      _themeData.outlinedButtonTheme;
  TextSelectionThemeData get _textSelectionTheme =>
      _themeData.textSelectionTheme;
  DataTableThemeData get _dataTableTheme => _themeData.dataTableTheme;
  CheckboxThemeData get _checkboxTheme => _themeData.checkboxTheme;
  RadioThemeData get _radioTheme => _themeData.radioTheme;
  SwitchThemeData get _switchTheme => _themeData.switchTheme;
}

class _Themes {
  const _Themes({
    required this.button,
    required this.toggleButtons,
    required this.text,
    required this.primaryText,
    required this.accentText,
    required this.inputDecoration,
    required this.icon,
    required this.primaryIcon,
    required this.accentIcon,
    required this.slider,
    required this.tabBar,
    required this.tooltip,
    required this.card,
    required this.chip,
    required this.appBar,
    required this.scrollbar,
    required this.bottomAppBar,
    required this.dialog,
    required this.floatingActionButton,
    required this.navigationRail,
    required this.snackBar,
    required this.bottomSheet,
    required this.popupMenu,
    required this.banner,
    required this.divider,
    required this.buttonBar,
    required this.bottomNavigationBar,
    required this.timePicker,
    required this.textButton,
    required this.elevatedButton,
    required this.outlinedButton,
    required this.textSelection,
    required this.dataTable,
    required this.checkbox,
    required this.radio,
    required this.switchTheme,
    this.cupertinoOverride,
  });

  /// See [ThemeData.buttonTheme].
  final ButtonThemeData button;

  /// See [ThemeData.toggleButtonsTheme].
  final ToggleButtonsThemeData toggleButtons;

  /// See [ThemeData.textTheme].
  final TextTheme text;

  /// See [ThemeData.primaryTextTheme].
  final TextTheme primaryText;

  /// See [ThemeData.accentTextTheme].
  final TextTheme accentText;

  /// See [ThemeData.inputDecorationTheme].
  final InputDecorationTheme inputDecoration;

  /// See [ThemeData.iconTheme].
  final IconThemeData icon;

  /// See [ThemeData.primaryIconTheme].
  final IconThemeData primaryIcon;

  /// See [ThemeData.accentIconTheme].
  final IconThemeData accentIcon;

  /// See [ThemeData.sliderTheme].
  final SliderThemeData slider;

  /// See [ThemeData.tabBarTheme].
  final TabBarTheme tabBar;

  /// See [ThemeData.tooltipTheme].
  final TooltipThemeData tooltip;

  /// See [ThemeData.cardTheme].
  final CardTheme card;

  /// See [ThemeData.chipTheme].
  final ChipThemeData chip;

  /// See [ThemeData.appBarTheme].
  final AppBarTheme appBar;

  /// See [ThemeData.scrollbarTheme].
  final ScrollbarThemeData scrollbar;

  /// See [ThemeData.bottomAppBarTheme].
  final BottomAppBarTheme bottomAppBar;

  /// See [ThemeData.dialogTheme].
  final DialogTheme dialog;

  /// See [ThemeData.floatingActionButtonTheme].
  final FloatingActionButtonThemeData floatingActionButton;

  /// See [ThemeData.navigationRailTheme].
  final NavigationRailThemeData navigationRail;

  /// See [ThemeData.cupertinoOverrideTheme].
  final NoDefaultCupertinoThemeData? cupertinoOverride;

  /// See [ThemeData.snackBarTheme].
  final SnackBarThemeData snackBar;

  /// See [ThemeData.bottomSheetTheme].
  final BottomSheetThemeData bottomSheet;

  /// See [ThemeData.popupMenuTheme].
  final PopupMenuThemeData popupMenu;

  /// See [ThemeData.bannerTheme].
  final MaterialBannerThemeData banner;

  /// See [ThemeData.dividerTheme].
  final DividerThemeData divider;

  /// See [ThemeData.buttonBarTheme].
  final ButtonBarThemeData buttonBar;

  /// See [ThemeData.bottomNavigationBarTheme].
  final BottomNavigationBarThemeData bottomNavigationBar;

  /// See [ThemeData.timePickerTheme].
  final TimePickerThemeData timePicker;

  /// See [ThemeData.textButtonTheme].
  final TextButtonThemeData textButton;

  /// See [ThemeData.elevatedButtonTheme].
  final ElevatedButtonThemeData elevatedButton;

  /// See [ThemeData.outlinedButtonTheme].
  final OutlinedButtonThemeData outlinedButton;

  /// See [ThemeData.textSelectionTheme].
  final TextSelectionThemeData textSelection;

  /// See [ThemeData.dataTableTheme].
  final DataTableThemeData dataTable;

  /// See [ThemeData.checkboxTheme].
  final CheckboxThemeData checkbox;

  /// See [ThemeData.radioTheme].
  final RadioThemeData radio;

  /// See [ThemeData.switchTheme].
  final SwitchThemeData switchTheme;
}
