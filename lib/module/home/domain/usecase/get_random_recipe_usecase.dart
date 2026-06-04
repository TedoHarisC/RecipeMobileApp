import 'package:recipe_app/core/network/handle_request.dart';
import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';
import 'package:recipe_app/module/home/domain/repository/home_repository.dart';

class GetRandomRecipeUseCase {
  final HomeRepository repository;

  GetRandomRecipeUseCase(this.repository);

  FutureResult<List<RecipeEntity>> call() async {
    return repository.getRandomRecipe();
  }
}