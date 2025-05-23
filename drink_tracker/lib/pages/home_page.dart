import 'package:drink_tracker/providers/item_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemProvider>(
      builder: (context, itemProvider, child) {
        return Center(
          child: itemProvider.items.isEmpty
              ? const Text("empty")
              : const Text("items"),
        );
      },
    );
  }
}
