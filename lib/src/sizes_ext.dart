import 'package:flutter/material.dart';

/// Helper extension that allows to use a size like:
/// `context.sizes.width`
extension Sizes on BuildContext {
  /// The list of sizes available to the app
  _Sizes get sizes => _Sizes(
        width: _width,
        height: _height,
        padding: _padding,
        viewInsets: _viewInsets,
        systemGestureInsets: _systemGestureInsets,
        viewPadding: _viewPadding,
        devicePixelRatio: _devicePixelRatio,
        textScaler: _textScaler,
        maybeDevicePixelRatio: _maybeDevicePixelRatio,
        maybeHeight: _maybeHeight,
        maybePadding: _maybePadding,
        maybeSystemGestureInsets: _maybeSystemGestureInsets,
        maybeTextScaler: _maybeTextScaler,
        maybeViewInsets: _maybeViewInsets,
        maybeViewPadding: _maybeViewPadding,
        maybeWidth: _maybeWidth,
      );

  double get _width => MediaQuery.sizeOf(this).width;
  double? get _maybeWidth => MediaQuery.maybeSizeOf(this)?.width;
  double get _height => MediaQuery.sizeOf(this).height;
  double? get _maybeHeight => MediaQuery.maybeSizeOf(this)?.height;
  EdgeInsets get _padding => MediaQuery.paddingOf(this);
  EdgeInsets? get _maybePadding => MediaQuery.maybePaddingOf(this);
  EdgeInsets get _viewInsets => MediaQuery.viewInsetsOf(this);
  EdgeInsets? get _maybeViewInsets => MediaQuery.maybeViewInsetsOf(this);
  EdgeInsets get _systemGestureInsets => MediaQuery.systemGestureInsetsOf(this);
  EdgeInsets? get _maybeSystemGestureInsets =>
      MediaQuery.maybeSystemGestureInsetsOf(this);
  EdgeInsets get _viewPadding => MediaQuery.viewPaddingOf(this);
  EdgeInsets? get _maybeViewPadding => MediaQuery.maybeViewPaddingOf(this);
  double get _devicePixelRatio => MediaQuery.devicePixelRatioOf(this);
  double? get _maybeDevicePixelRatio =>
      MediaQuery.maybeDevicePixelRatioOf(this);
  TextScaler get _textScaler => MediaQuery.textScalerOf(this);
  TextScaler? get _maybeTextScaler => MediaQuery.maybeTextScalerOf(this);
}

class _Sizes {
  const _Sizes({
    required this.width,
    required this.height,
    required this.padding,
    required this.viewInsets,
    required this.systemGestureInsets,
    required this.viewPadding,
    required this.devicePixelRatio,
    required this.textScaler,
    required this.maybeWidth,
    required this.maybeHeight,
    required this.maybePadding,
    required this.maybeViewInsets,
    required this.maybeSystemGestureInsets,
    required this.maybeViewPadding,
    required this.maybeDevicePixelRatio,
    required this.maybeTextScaler,
  });

  /// See [Size.width].
  final double width;

  /// See [Size.width].
  final double? maybeWidth;

  /// See [Size.height].
  final double height;

  /// See [Size.height].
  final double? maybeHeight;

  /// See [MediaQueryData.padding].
  final EdgeInsets padding;

  /// See [MediaQueryData.padding].
  final EdgeInsets? maybePadding;

  /// See [MediaQueryData.viewInsets].
  final EdgeInsets viewInsets;

  /// See [MediaQueryData.viewInsets].
  final EdgeInsets? maybeViewInsets;

  /// See [MediaQueryData.systemGestureInsets].
  final EdgeInsets systemGestureInsets;

  /// See [MediaQueryData.systemGestureInsets].
  final EdgeInsets? maybeSystemGestureInsets;

  /// See [MediaQueryData.viewPadding].
  final EdgeInsets viewPadding;

  /// See [MediaQueryData.viewPadding].
  final EdgeInsets? maybeViewPadding;

  /// See [MediaQueryData.devicePixelRatio].
  final double devicePixelRatio;

  /// See [MediaQueryData.devicePixelRatio].
  final double? maybeDevicePixelRatio;

  /// See [MediaQueryData.textScaler].
  final TextScaler textScaler;

  /// See [MediaQueryData.textScaler].
  final TextScaler? maybeTextScaler;
}

/// Converts a [num] into an [EdgeInsets]
extension PaddingNum on num {
  /// Creates insets where all the offsets are `value`.
  EdgeInsets paddingAll() => EdgeInsets.all(toDouble());

  /// Creates insets with symmetric horizontal offsets.
  EdgeInsets paddingHorizontal() =>
      EdgeInsets.symmetric(horizontal: toDouble());

  /// Creates insets with symmetric vertical offsets.
  EdgeInsets paddingVertical() => EdgeInsets.symmetric(vertical: toDouble());

  /// Creates insets with only the top value.
  EdgeInsets paddingTop() => EdgeInsets.only(top: toDouble());

  /// Creates insets with only the left value.
  EdgeInsets paddingLeft() => EdgeInsets.only(left: toDouble());

  /// Creates insets with only the right value.
  EdgeInsets paddingRight() => EdgeInsets.only(right: toDouble());

  /// Creates insets with only the bottom value.
  EdgeInsets paddingBottom() => EdgeInsets.only(bottom: toDouble());
}
