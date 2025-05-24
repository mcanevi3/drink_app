
import 'package:drink_tracker/models/coffee_model.dart';
import 'package:drink_tracker/services/database_service.dart';

class CoffeeRepository {
  final _dbService = CoffeeService();

  Future<List<CoffeeModel>> getItems() async {
    final rows = await _dbService.getAll('coffee_table');
    return rows.map((row) => CoffeeModel.fromJson(row)).toList();
  }

  Future<void> addItem(CoffeeModel item) async {
    await _dbService.insert('coffee_table', item.toJson());
  }

  Future<void> deleteItem(int id) async {
    await _dbService.delete('coffee_table', id);
  }
}
