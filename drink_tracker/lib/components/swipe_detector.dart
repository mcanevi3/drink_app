import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SwipeDetector extends HookWidget {
  final Function? onSwipeLeft;
  final Function? onSwipeRight;
  final Widget? child;
  const SwipeDetector({super.key, required this.child, this.onSwipeLeft, this.onSwipeRight});

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
          if (onSwipeLeft != null) {
            onSwipeLeft!();
          }
        }
        if (swipeRight.value) {
          if (onSwipeRight != null) {
            onSwipeRight!();
          }
        }
      },
      child: child,
    );
  }
}
