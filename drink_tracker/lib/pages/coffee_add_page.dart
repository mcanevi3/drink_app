import 'package:drink_tracker/providers/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeeAddPage extends StatelessWidget {
  const CoffeeAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeProvider>(
      builder: (context, coffeeProvider, child) {
        return Column(children: [
          TextFormField(decoration: InputDecoration(labelText: ""),),
        ],);
      },
    );
  }
}
