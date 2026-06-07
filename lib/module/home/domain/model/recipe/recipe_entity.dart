import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_entity.freezed.dart';

@freezed
abstract class RecipeEntity with _$RecipeEntity {
  const factory RecipeEntity({
    required String id,
    required String title,
    required List<IngredientEntity> ingredients,
    
    String? category,
    String? area,
    String? instructions,
    String? thumbnailUrl,
    List<String>? tags,
    String? youtubeUrl,
    @Default(false) bool isSaved,
  }) = _RecipeEntity;
}

@freezed
abstract class IngredientEntity with _$IngredientEntity {
  const factory IngredientEntity({
    required String name,
    required String measure,
  }) = _IngredientEntity;
}