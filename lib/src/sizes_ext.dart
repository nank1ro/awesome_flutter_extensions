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
      );

  /// The list of media query available.
  _MediaQuery get mediaQuery => _MediaQuery(
        devicePixelRatio: _devicePixelRatio,
        textScaleFactor: _textScaleFactor,
      );

  MediaQueryData get _mediaQuery => MediaQuery.of(this);

  double get _width => _mediaQuery.size.width;
  double get _height => _mediaQuery.size.height;
  EdgeInsets get _padding => _mediaQuery.padding;
  EdgeInsets get _viewInsets => _mediaQuery.viewInsets;
  EdgeInsets get _systemGestureInsets => _mediaQuery.systemGestureInsets;
  EdgeInsets get _viewPadding => _mediaQuery.viewPadding;
  double get _devicePixelRatio => _mediaQuery.devicePixelRatio;
  double get _textScaleFactor => _mediaQuery.textScaleFactor;
}

class _Sizes {
  const _Sizes({
    required this.width,
    required this.height,
    required this.padding,
    required this.viewInsets,
    required this.systemGestureInsets,
    required this.viewPadding,
  });

  /// See [Size.width].
  final double width;

  /// See [Size.height].
  final double height;

  /// See [MediaQueryData.padding].
  final EdgeInsets padding;

  /// See [MediaQueryData.viewInsets].
  final EdgeInsets viewInsets;

  /// See [MediaQueryData.systemGestureInsets].
  final EdgeInsets systemGestureInsets;

  /// See [MediaQueryData.viewPadding].
  final EdgeInsets viewPadding;
}

class _MediaQuery {
  const _MediaQuery({
    required this.devicePixelRatio,
    required this.textScaleFactor,
  });

  /// See [MediaQueryData.devicePixelRatio].
  final double devicePixelRatio;

  /// See [MediaQueryData.devicePixelRatio].
  final double textScaleFactor;
}
