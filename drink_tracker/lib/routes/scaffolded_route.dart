// routes/scaffolded_route.dart
import 'package:drink_tracker/components/base_scaffold.dart';
import 'package:flutter/material.dart';

class ScaffoldedRoute extends StatelessWidget {
  final String title;
  final Widget child;

  const ScaffoldedRoute({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(title: title, body: child);
  }
}

