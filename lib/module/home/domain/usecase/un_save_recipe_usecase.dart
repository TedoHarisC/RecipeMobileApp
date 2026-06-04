import 'package:recipe_app/core/network/handle_request.dart';
import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';
import 'package:recipe_app/module/home/domain/repository/home_repository.dart';

class UnSaveRecipeUseCase {
  final HomeRepository repository;

  UnSaveRecipeUseCase(this.repository);

  FutureResult<bool> call(RecipeEntity recipe) async {
    return repository.unSaveRecipe(recipe);
  }
}