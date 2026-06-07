import 'package:recipe_app/core/network/service/network_service.dart';
import 'package:recipe_app/module/home/data/datasources/endpoint/home_endpoint.dart';
import 'package:recipe_app/module/home/data/model/category/category_response.dart';
import 'package:recipe_app/module/home/data/model/recipe/recipe_response.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoryResponse>> getCategories();
  Future<List<RecipeResponse>> getRandomRecipe();
  Future<List<RecipeResponse>> searchRecipe(String keyword);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final NetworkService _service;

  HomeRemoteDataSourceImpl(this._service);

  @override
  Future<List<CategoryResponse>> getCategories() {
    return _service.get(
    HomeEndpoint.categoryRecipe(),
    converter: (json) {
      final List categories = json['categories'] ?? [];
      return categories.map((e) => CategoryResponse.fromJson(e)).toList();
    });
  }

  @override
  Future<List<RecipeResponse>> getRandomRecipe() {
    return _service.get(
    HomeEndpoint.randomRecipe(),
    converter: (json) {
      final List recipes = json['meals'] ?? [];
      return recipes.map((e) => RecipeResponse.fromJson(e)).toList();
    });
  }

  @override
  Future<List<RecipeResponse>> searchRecipe(String keyword) {
    return _service.get(
    HomeEndpoint.searchRecipe(keyword),
    converter: (json) {
      final List recipes = json['meals'] ?? [];
      return recipes.map((e) => RecipeResponse.fromJson(e)).toList();
    });
  }
}
