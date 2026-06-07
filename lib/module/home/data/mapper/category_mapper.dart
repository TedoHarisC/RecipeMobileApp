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