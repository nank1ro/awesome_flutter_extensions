/// Information about the environment in which the current program is running.
///
/// Platform provides information such as the operating system,
/// the hostname of the computer, the value of environment variables,
/// the path to the running program,
/// and other global properties of the program being run.
abstract final class Platform {
  /// Whether the program is running in the web browser
  static const isWeb = true;

  /// Whether the operating system is Android
  static const isAndroid = false;

  /// Whether the operating system is macOS
  static const isMacOS = false;

  /// Whether the operating system is Windows
  static const isWindows = false;

  /// Whether the operating system is Fuchsia
  static const isFuchsia = false;

  /// Whether the operating system is iOS
  static const isIOS = false;

  /// Whether the operating system is Linux
  static const isLinux = false;
}
