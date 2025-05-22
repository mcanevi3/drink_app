import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Color? backgroundColor;

  const BaseScaffold({
    super.key,
    required this.title,
    required this.body,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      backgroundColor: backgroundColor,
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Menu')),
            ListTile(title: const Text('Home'), onTap: () => context.go('/')),
            ListTile(
              title: const Text('Settings'),
              onTap: () => context.go('/settings'),
            ),
          ],
        ),
      ),
      body: Builder(
        builder:
            (context) => GestureDetector(
              child: body,
            ),
      ),
    );
  }
}
