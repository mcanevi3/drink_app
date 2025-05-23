import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
      body: SwipeDetector(),
    );
  }
}

class SwipeDetector extends HookWidget {
  const SwipeDetector({super.key});

  @override
  Widget build(BuildContext context) {
    var swipeLeft = useState(false);
    var swipeRight = useState(false);

    return GestureDetector(
      onPanUpdate: (details) {
        if (details.delta.dx > 0) {
          // print("+X ${details.delta.dx}");
          swipeLeft.value = false;
          swipeRight.value = true;
        } else {
          // print("-X ${details.delta.dx}");
          swipeLeft.value = true;
          swipeRight.value = false;
        }

        // if (details.delta.dy > 0) {
        //   print("+Y ${details.delta.dy}");
        // } else {
        //   print("-Y ${details.delta.dy}");
        // }
      },
      onPanEnd: (details) {
        if (swipeLeft.value) {
          print("swiped left");
        }
        if (swipeRight.value) {
          print("swiped right");
        }
      },
    );
  }
}
