import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Helper extension that allows to use a them like:
/// `context.themes.icon`
extension Themes on BuildContext {
  /// The list of themes available
  _Themes get themes => _Themes(
        button: _buttonTheme,
        toggleButtons: _toggleButtonsTheme,
        text: _textTheme,
        primaryText: _primaryTextTheme,
        inputDecoration: _inputDecorationTheme,
        icon: _iconTheme,
        primaryIcon: _primaryIconTheme,
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
        badge: _badgeTheme,
        drawer: _drawerTheme,
        dropdownMenu: _dropdownMenuTheme,
        expansionTile: _expansionTileTheme,
        extensions: _extensions,
        filledButton: _filledButtonTheme,
        iconButton: _iconButtonTheme,
        listTile: _listTileTheme,
        menu: _menuTheme,
        menuBar: _menuBarTheme,
        menuButton: _menuButtonTheme,
        navigationBar: _navigationBarTheme,
        navigationDrawer: _navigationDrawerTheme,
        pageTransitions: _pageTransitionsTheme,
        progressIndicator: _progressIndicatorTheme,
        segmentedButton: _segmentedButtonTheme,
      );

  ThemeData get _themeData => Theme.of(this);

  TextTheme get _textTheme => _themeData.textTheme;
  ButtonThemeData get _buttonTheme => _themeData.buttonTheme;
  ToggleButtonsThemeData get _toggleButtonsTheme =>
      _themeData.toggleButtonsTheme;
  TextTheme get _primaryTextTheme => _themeData.primaryTextTheme;
  IconThemeData get _iconTheme => _themeData.iconTheme;
  InputDecorationTheme get _inputDecorationTheme =>
      _themeData.inputDecorationTheme;
  IconThemeData get _primaryIconTheme => _themeData.primaryIconTheme;
  SliderThemeData get _sliderTheme => _themeData.sliderTheme;
  TabBarThemeData get _tabBarTheme => _themeData.tabBarTheme;
  TooltipThemeData get _tooltipTheme => _themeData.tooltipTheme;
  CardThemeData get _cardTheme => _themeData.cardTheme;
  ChipThemeData get _chipTheme => _themeData.chipTheme;
  AppBarTheme get _appBarTheme => _themeData.appBarTheme;
  ScrollbarThemeData get _scrollbarTheme => _themeData.scrollbarTheme;
  BottomAppBarTheme get _bottomAppBarTheme => _themeData.bottomAppBarTheme;
  DialogThemeData get _dialogTheme => _themeData.dialogTheme;
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
  BadgeThemeData get _badgeTheme => _themeData.badgeTheme;
  DrawerThemeData get _drawerTheme => _themeData.drawerTheme;
  DropdownMenuThemeData get _dropdownMenuTheme => _themeData.dropdownMenuTheme;
  ExpansionTileThemeData get _expansionTileTheme =>
      _themeData.expansionTileTheme;
  Map<Object, ThemeExtension<dynamic>> get _extensions => _themeData.extensions;
  FilledButtonThemeData get _filledButtonTheme => _themeData.filledButtonTheme;
  IconButtonThemeData get _iconButtonTheme => _themeData.iconButtonTheme;
  ListTileThemeData get _listTileTheme => _themeData.listTileTheme;
  MenuThemeData get _menuTheme => _themeData.menuTheme;
  MenuBarThemeData get _menuBarTheme => _themeData.menuBarTheme;
  MenuButtonThemeData get _menuButtonTheme => _themeData.menuButtonTheme;
  NavigationBarThemeData get _navigationBarTheme =>
      _themeData.navigationBarTheme;
  NavigationDrawerThemeData get _navigationDrawerTheme =>
      _themeData.navigationDrawerTheme;
  PageTransitionsTheme get _pageTransitionsTheme =>
      _themeData.pageTransitionsTheme;
  ProgressIndicatorThemeData get _progressIndicatorTheme =>
      _themeData.progressIndicatorTheme;
  SegmentedButtonThemeData get _segmentedButtonTheme =>
      _themeData.segmentedButtonTheme;
}

class _Themes {
  const _Themes({
    required this.button,
    required this.toggleButtons,
    required this.text,
    required this.primaryText,
    required this.inputDecoration,
    required this.icon,
    required this.primaryIcon,
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
    required this.cupertinoOverride,
    required this.pageTransitions,
    required this.extensions,
    required this.badge,
    required this.drawer,
    required this.dropdownMenu,
    required this.expansionTile,
    required this.filledButton,
    required this.iconButton,
    required this.listTile,
    required this.menuBar,
    required this.menuButton,
    required this.menu,
    required this.navigationBar,
    required this.navigationDrawer,
    required this.progressIndicator,
    required this.segmentedButton,
  });

  /// See [ThemeData.buttonTheme].
  final ButtonThemeData button;

  /// See [ThemeData.toggleButtonsTheme].
  final ToggleButtonsThemeData toggleButtons;

  /// See [ThemeData.textTheme].
  final TextTheme text;

  /// See [ThemeData.primaryTextTheme].
  final TextTheme primaryText;

  /// See [ThemeData.inputDecorationTheme].
  final InputDecorationTheme inputDecoration;

  /// See [ThemeData.iconTheme].
  final IconThemeData icon;

  /// See [ThemeData.primaryIconTheme].
  final IconThemeData primaryIcon;

  /// See [ThemeData.sliderTheme].
  final SliderThemeData slider;

  /// See [ThemeData.tabBarTheme].
  final TabBarThemeData tabBar;

  /// See [ThemeData.tooltipTheme].
  final TooltipThemeData tooltip;

  /// See [ThemeData.cardTheme].
  final CardThemeData card;

  /// See [ThemeData.chipTheme].
  final ChipThemeData chip;

  /// See [ThemeData.appBarTheme].
  final AppBarTheme appBar;

  /// See [ThemeData.scrollbarTheme].
  final ScrollbarThemeData scrollbar;

  /// See [ThemeData.bottomAppBarTheme].
  final BottomAppBarTheme bottomAppBar;

  /// See [ThemeData.dialogTheme].
  final DialogThemeData dialog;

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

  /// See [ThemeData.pageTransitionsTheme].
  final PageTransitionsTheme pageTransitions;

  /// See [ThemeData.extensions].
  final Map<Object, ThemeExtension<dynamic>> extensions;

  /// See [ThemeData.badgeTheme].
  final BadgeThemeData badge;

  /// See [ThemeData.drawerTheme].
  final DrawerThemeData drawer;

  /// See [ThemeData.dropdownMenuTheme].
  final DropdownMenuThemeData dropdownMenu;

  /// See [ThemeData.expansionTileTheme].
  final ExpansionTileThemeData expansionTile;

  /// See [ThemeData.filledButtonTheme].
  final FilledButtonThemeData filledButton;

  /// See [ThemeData.iconButtonTheme].
  final IconButtonThemeData iconButton;

  /// See [ThemeData.listTileTheme].
  final ListTileThemeData listTile;

  /// See [ThemeData.menuBarTheme].
  final MenuBarThemeData menuBar;

  /// See [ThemeData.menuButtonTheme].
  final MenuButtonThemeData menuButton;

  /// See [ThemeData.menuTheme].
  final MenuThemeData menu;

  /// See [ThemeData.navigationBarTheme].
  final NavigationBarThemeData navigationBar;

  /// See [ThemeData.navigationDrawerTheme].
  final NavigationDrawerThemeData navigationDrawer;

  /// See [ThemeData.progressIndicatorTheme].
  final ProgressIndicatorThemeData progressIndicator;

  /// See [ThemeData.segmentedButtonTheme].
  final SegmentedButtonThemeData segmentedButton;
}

/// Theme mode extensions
extension ThemeModeExt on BuildContext {
  /// Indicates wheter the app is in dark mode
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  /// Indicates wheter the app is in light mode
  bool get isLightMode => Theme.of(this).brightness == Brightness.light;
}
