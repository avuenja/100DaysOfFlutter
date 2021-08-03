import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String? displayName;
  final int? internalId;

  AppConfig({
    this.displayName,
    this.internalId,
    required Widget child,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
