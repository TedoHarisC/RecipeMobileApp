import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';
import 'package:recipe_app/module/home/domain/repository/home_repository.dart';

class WatchSavedRecipesUseCase {
  final HomeRepository repository;

  WatchSavedRecipesUseCase(this.repository);

  Stream<List<RecipeEntity>> call(int? limit) {
    return repository.watchSavedRecipes(limit);
  }
}