// providers/item_provider.dart
import 'package:drink_tracker/models/coffee_model.dart';
import 'package:drink_tracker/repositories/coffee_repository.dart';
import 'package:flutter/material.dart';

class CoffeeProvider extends ChangeNotifier {
  final _repository = CoffeeRepository();

  List<CoffeeModel> _items = [];
  List<CoffeeModel> get items => _items;

  Future<void> loadItems() async {
    _items = await _repository.getItems();
    notifyListeners();
  }

  Future<void> addItem(CoffeeModel model) async {
    await _repository.addItem(model);
    await loadItems();
  }

  Future<void> deleteItem(int id) async {
    await _repository.deleteItem(id);
    await loadItems();
  }
}
