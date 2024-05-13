import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// This handles '/' and '/details'.
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
      ),
      routes: [
        GoRoute(
          path: 'deeplink_test',
          builder: (_, __) => Scaffold(
            appBar: AppBar(title: const Text('Details Screen')),
          ),
        ),
      ],
    ),
  ],
);

void main() {
  runApp(MaterialApp.router(routerConfig: router));
}
