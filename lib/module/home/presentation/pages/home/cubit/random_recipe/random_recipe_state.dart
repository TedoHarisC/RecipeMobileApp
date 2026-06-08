part of 'random_recipe_cubit.dart';

@freezed
abstract class RandomRecipeState with _$RandomRecipeState {
  const factory RandomRecipeState({
    @Default(BlocStatus.initial) BlocStatus isLoading,
    @Default([])
    List<RecipeEntity> randomRecipes, // Replace with your actual recipe entity
    @Default(null) Failure? failure, // Replace with your actual recipe entity
  }) = _RandomRecipeState;
}
