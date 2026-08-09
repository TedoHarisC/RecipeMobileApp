import 'package:drift/drift.dart';
import 'package:recipe_app/core/local_database/local_database.dart';
import 'package:recipe_app/module/home/data/model/category/category_response.dart';
import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';

extension CategoryResponseMapper on CategoryResponse {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      name: name,
      thumbnailUrl: imageUrl,
      description: description,
    );
  }
}

extension CategoryEntityMapper on CategoryEntity {
  CategoryItemsCompanion toCompanion() {
    return CategoryItemsCompanion.insert(
      id: id,
      name: name,
      description: Value(description),
      thumbnailUrl: Value(thumbnailUrl),
    );
  }
}

extension CategoryItemsMapper on CategoryItem {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      name: name,
      description: description,
      thumbnailUrl: thumbnailUrl,
    );
  }
}
