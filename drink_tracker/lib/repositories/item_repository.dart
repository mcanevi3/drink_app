// repositories/item_repository.dart
import '../models/item_model.dart';
import '../services/database_service.dart';

class ItemRepository {
  final _dbService = DatabaseService();

  Future<List<ItemModel>> getItems() async {
    final rows = await _dbService.getAll('items');
    return rows.map((row) => ItemModel.fromMap(row)).toList();
  }

  Future<void> addItem(ItemModel item) async {
    await _dbService.insert('items', item.toMap());
  }

  Future<void> deleteItem(int id) async {
    await _dbService.delete('items', id);
  }
}
