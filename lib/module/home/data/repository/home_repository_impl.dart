import 'package:recipe_app/core/network/handle_request.dart';

import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';

import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';

import '../../domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  FutureResult<List<CategoryEntity>> getCategoryRecipe() {
    // TODO: implement getCategoryRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<List<RecipeEntity>> getRandomRecipe() {
    // TODO: implement getRandomRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<bool> saveRecipe(RecipeEntity recipe) {
    // TODO: implement saveRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<List<RecipeEntity>> searchRecipe(String keyword) {
    // TODO: implement searchRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<bool> unSaveRecipe(RecipeEntity recipe) {
    // TODO: implement unSaveRecipe
    throw UnimplementedError();
  }

  @override
  Stream<List<RecipeEntity>> watchSavedRecipes(int? limit) {
    // TODO: implement watchSavedRecipes
    throw UnimplementedError();
  }
}
