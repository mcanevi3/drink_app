// providers/item_provider.dart
import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../repositories/item_repository.dart';

class ItemProvider extends ChangeNotifier {
  final _repository = ItemRepository();

  List<ItemModel> _items = [];
  List<ItemModel> get items => _items;

  Future<void> loadItems() async {
    _items = await _repository.getItems();
    notifyListeners();
  }

  Future<void> addItem(String name) async {
    await _repository.addItem(ItemModel(name: name));
    await loadItems();
  }

  Future<void> deleteItem(int id) async {
    await _repository.deleteItem(id);
    await loadItems();
  }
}
