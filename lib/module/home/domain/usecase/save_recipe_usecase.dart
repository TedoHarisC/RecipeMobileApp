import 'package:recipe_app/core/network/handle_request.dart';
import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';
import 'package:recipe_app/module/home/domain/repository/home_repository.dart';

class SaveRecipeUseCase {
  final HomeRepository repository;

  SaveRecipeUseCase(this.repository);

  FutureResult<bool> call(RecipeEntity recipe) async {
    return repository.saveRecipe(recipe);
  }
}