import 'package:recipe_app/core/network/handle_request.dart';
import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';
import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';

abstract class HomeRepository {
  FutureResult<List<CategoryEntity>> getCategoryRecipe();
  FutureResult<List<RecipeEntity>> getRandomRecipe();
  FutureResult<List<RecipeEntity>> searchRecipe(String keyword);
  FutureResult<bool> saveRecipe(RecipeEntity recipe);
  FutureResult<bool> unSaveRecipe(RecipeEntity recipe);
  Stream<List<RecipeEntity>> watchSavedRecipes(int? limit);
}
