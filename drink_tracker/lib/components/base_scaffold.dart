import 'package:drink_tracker/components/swipe_detector.dart';
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
              title: const Text('Coffee List'),
              onTap: () => context.go('/coffee_list'),
            ),
             ListTile(
              title: const Text('Add Coffee'),
              onTap: () => context.go('/coffee_add'),
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () => context.go('/settings'),
            ),
          ],
        ),
      ),
      body: SwipeDetector(onSwipeRight: (){
        
      },child: body,),
    );
  }
}
