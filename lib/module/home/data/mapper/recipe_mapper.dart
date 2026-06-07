import 'package:recipe_app/module/home/data/model/recipe/recipe_response.dart';
import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';

extension RecipeResponseMapper on RecipeResponse {
  RecipeEntity toEntity() {
    return RecipeEntity(
      id: id,
      title: name,
      category: category,
      area: area,
      instructions: instructions,
      thumbnailUrl: image,
      tags: _parseTags(tags),
      youtubeUrl: youtube,
      ingredients: _buildIngredients(),
    );
  }

  List<IngredientEntity> _buildIngredients() {
    final ingredientsRaw = [
      ingredient1, ingredient2, ingredient3, ingredient4, ingredient5,
      ingredient6, ingredient7, ingredient8, ingredient9, ingredient10,
      ingredient11, ingredient12, ingredient13, ingredient14, ingredient15,
      ingredient16, ingredient17, ingredient18, ingredient19, ingredient20,
    ];
    final measuresRaw = [
      measure1, measure2, measure3, measure4, measure5,
      measure6, measure7, measure8, measure9, measure10,
      measure11, measure12, measure13, measure14, measure15,
      measure16, measure17, measure18, measure19, measure20,
    ];
    
    List<IngredientEntity> ingredients = [];

    for (int i = 0; i < ingredientsRaw.length; i++) {
      final ingredient = ingredientsRaw[i];
      final measure = measuresRaw[i];
      if (ingredient != null && ingredient.isNotEmpty) {
        ingredients.add(IngredientEntity(
          name: ingredient.trim(),
          measure: measure?.trim() ?? '',
        ));
      }
    }
    return ingredients;
  }

  List<String>? _parseTags(String? tags) {
    if (tags == null || tags.isEmpty) return null;
    return tags.split(',').map((tag) => tag.trim()).toList();
  }
}