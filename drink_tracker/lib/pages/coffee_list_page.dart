import 'package:drink_tracker/providers/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeListPage extends StatelessWidget {
  const CoffeeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeProvider>(
      builder: (context, coffeeProvider, child) {
        return coffeeProvider.items.isEmpty
            ? Center(child: const Text("No Coffee's"))
            : Center(child: Text("Coffee List"));
      },
    );
  }
}
