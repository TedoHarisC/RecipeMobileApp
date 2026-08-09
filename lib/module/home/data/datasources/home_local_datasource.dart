import 'package:drift/drift.dart';
import 'package:recipe_app/core/local_database/local_database.dart';
import 'package:recipe_app/module/home/data/mapper/category_mapper.dart';
import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';

abstract class HomeLocalDataSource {
  Future<bool> hasSavedCategories();
  Future<bool> saveCategories(List<CategoryEntity> categories);
  Future<List<CategoryEntity>> getSavedCategories();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final LocalDatabase localDatabase;

  HomeLocalDataSourceImpl(this.localDatabase);

  @override
  Future<bool> hasSavedCategories() async {
    try {
      final query = localDatabase.selectOnly(localDatabase.categoryItems)
        ..addColumns([localDatabase.categoryItems.id.count()]);
      final result = await query.getSingle();
      final count = result.read(localDatabase.categoryItems.id.count());

      return count != null && count > 0;
    } catch (e) {
      throw Exception('Failed to get saved categories: $e');
    }
  }

  @override
  Future<List<CategoryEntity>> getSavedCategories() async {
    try {
      final query = localDatabase.select(localDatabase.categoryItems).get();
      final entities = (await query).map((item) => item.toEntity()).toList();
      return entities;
    } catch (e) {
      throw Exception('Failed to get saved categories: $e');
    }
  }

  @override
  Future<bool> saveCategories(List<CategoryEntity> categories) async {
    try {
      final futures = categories.map((category) {
        return localDatabase
            .into(localDatabase.categoryItems)
            .insert(category.toCompanion());
      }).toList();

      await Future.wait(futures);
      return true;
    } catch (e) {
      throw Exception('Failed to save categories: $e');
    }
  }
}
