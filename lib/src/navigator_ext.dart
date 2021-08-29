import 'package:flutter/material.dart';

/// Helper extension that allows to use a navigator like:
/// `context.navigator.push(SomePage())`
extension NavigatorX on BuildContext {
  /// All the navigator methods
  _Navigator get navigator => _Navigator(
        canPop: _navigator.canPop,
        maybePop: _navigator.maybePop,
        pop: _navigator.pop,
        popUntil: _navigator.popUntil,
        push: _navigator.push,
        popAndPushNamed: _navigator.popAndPushNamed,
        pushAndRemoveUntil: _navigator.pushAndRemoveUntil,
        pushNamed: _navigator.pushNamed,
        pushNamedAndRemoveUntil: _navigator.pushNamedAndRemoveUntil,
        pushReplacement: _navigator.pushReplacement,
        pushReplacementNamed: _navigator.pushReplacementNamed,
        removeRoute: _navigator.removeRoute,
        removeRouteBelow: _navigator.removeRouteBelow,
        replace: _navigator.replace,
        replaceRouteBelow: _navigator.replaceRouteBelow,
      );

  NavigatorState get _navigator => Navigator.of(this);
}

class _Navigator {
  const _Navigator({
    required this.canPop,
    required this.maybePop,
    required this.pop,
    required this.popUntil,
    required this.push,
    required this.popAndPushNamed,
    required this.pushAndRemoveUntil,
    required this.pushNamed,
    required this.pushNamedAndRemoveUntil,
    required this.pushReplacement,
    required this.pushReplacementNamed,
    required this.removeRoute,
    required this.removeRouteBelow,
    required this.replace,
    required this.replaceRouteBelow,
  });

  /// See [NavigatorState.canPop].
  final bool Function() canPop;

  /// See [NavigatorState.maybePop].
  final Future<bool> Function<T extends Object?>([T? result]) maybePop;

  /// See [NavigatorState.pop].
  final void Function<T extends Object?>([T? result]) pop;

  /// See [NavigatorState.popUntil].
  final void Function(RoutePredicate predicate) popUntil;

  /// See [NavigatorState.push].
  final Future<T?> Function<T extends Object?>(Route<T> route) push;

  /// See [NavigatorState.popAndPushNamed].
  final Future<T?> Function<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) popAndPushNamed;

  /// See [NavigatorState.pushAndRemoveUntil].
  final Future<T?> Function<T extends Object?>(
      Route<T> newRoute, RoutePredicate predicate) pushAndRemoveUntil;

  /// See [NavigatorState.pushNamed].
  final Future<T?> Function<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) pushNamed;

  /// See [NavigatorState.pushNamedAndRemoveUntil].
  final Future<T?> Function<T extends Object?>(
    String newRouteName,
    RoutePredicate predicate, {
    Object? arguments,
  }) pushNamedAndRemoveUntil;

  /// See [NavigatorState.pushReplacement].
  final Future<T?> Function<T extends Object?, TO extends Object?>(
      Route<T> newRoute,
      {TO? result}) pushReplacement;

  /// See [NavigatorState.pushReplacementNamed].
  final Future<T?> Function<T extends Object?, TO extends Object?>(
      String routeName,
      {TO? result,
      Object? arguments}) pushReplacementNamed;

  /// See [NavigatorState.removeRoute].
  final void Function(Route<dynamic> route) removeRoute;

  /// See [NavigatorState.removeRouteBelow].
  final void Function(Route<dynamic> anchorRoute) removeRouteBelow;

  /// See [NavigatorState.replace].
  final void Function<T extends Object?>(
      {required Route<dynamic> oldRoute, required Route<T> newRoute}) replace;

  /// See [NavigatorState.replaceRouteBelow].
  final void Function<T extends Object?>(
      {required Route<dynamic> anchorRoute,
      required Route<T> newRoute}) replaceRouteBelow;
}
