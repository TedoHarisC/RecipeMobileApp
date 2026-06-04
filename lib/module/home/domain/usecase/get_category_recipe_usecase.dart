import 'package:recipe_app/core/network/handle_request.dart';
import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';
import 'package:recipe_app/module/home/domain/repository/home_repository.dart';

class GetCategoryRecipeUseCase {
  final HomeRepository repository;
  
  GetCategoryRecipeUseCase(this.repository);

  FutureResult<List<CategoryEntity>> call(String category) async {
    // Implement the logic to fetch recipes based on the category
    // This is a placeholder implementation and should be replaced with actual data fetching logic
    return repository.getCategoryRecipe();
  }
}