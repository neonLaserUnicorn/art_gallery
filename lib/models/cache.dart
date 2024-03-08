import 'package:flutter/material.dart';

class Cache extends InheritedWidget {
  final Map<String, dynamic> cache;

  Cache({super.key, required super.child}) : cache = <String, dynamic>{};

  static Cache? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Cache>();

  @override
  bool updateShouldNotify(Cache oldWidget) => cache != oldWidget.cache;

  T get<T>(String key) => cache[key] as T;
}
