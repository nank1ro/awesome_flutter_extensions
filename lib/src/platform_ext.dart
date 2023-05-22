import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Platform extensions
extension PlatformExt on BuildContext {
  TargetPlatform get _targetPlatform => Theme.of(this).platform;

  /// Platform info
  _Platform get platform => _Platform(
        isAndroid: !kIsWeb && Platform.isAndroid,
        isWeb: kIsWeb,
        isMacOS: !kIsWeb && Platform.isMacOS,
        isWindows: !kIsWeb && Platform.isWindows,
        isFuchsia: !kIsWeb && Platform.isFuchsia,
        isIOS: !kIsWeb && Platform.isIOS,
        isLinux: !kIsWeb && Platform.isLinux,
      );

  /// Target platform info
  _TargetPlatform get targetPlatform => _TargetPlatform(
        isAndroid: _targetPlatform == TargetPlatform.android,
        isFuchsia: _targetPlatform == TargetPlatform.fuchsia,
        isIOS: _targetPlatform == TargetPlatform.iOS,
        isLinux: _targetPlatform == TargetPlatform.linux,
        isMacOS: _targetPlatform == TargetPlatform.macOS,
        isWindows: _targetPlatform == TargetPlatform.windows,
      );
}

class _Platform {
  _Platform({
    required this.isAndroid,
    required this.isMacOS,
    required this.isWindows,
    required this.isFuchsia,
    required this.isWeb,
    required this.isIOS,
    required this.isLinux,
  });

  /// Indicates wheter the platform is android
  final bool isAndroid;

  /// Indicates wheter the platform is macOS
  final bool isMacOS;

  /// Indicates wheter the platform is windows
  final bool isWindows;

  /// Indicates wheter the platform is fuchsia
  final bool isFuchsia;

  /// Indicates wheter the platform is web
  final bool isWeb;

  /// Indicates wheter the platform is ios
  final bool isIOS;

  /// Indicates wheter the platform is linux
  final bool isLinux;
}

class _TargetPlatform {
  _TargetPlatform({
    required this.isAndroid,
    required this.isFuchsia,
    required this.isIOS,
    required this.isLinux,
    required this.isMacOS,
    required this.isWindows,
  });

  /// Indicates wheter the target platform is android
  final bool isAndroid;

  /// Indicates wheter the target platform is fuchsia
  final bool isFuchsia;

  /// Indicates wheter the target platform is iOS
  final bool isIOS;

  /// Indicates wheter the target platform is linux
  final bool isLinux;

  /// Indicates wheter the target platform is macOS
  final bool isMacOS;

  /// Indicates wheter the target platform is windows
  final bool isWindows;
}
