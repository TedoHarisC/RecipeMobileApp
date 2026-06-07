import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_response.freezed.dart';
part 'recipe_response.g.dart';

@freezed
abstract class RecipeResponse with _$RecipeResponse {
	const factory RecipeResponse({
		@JsonKey(name: 'idMeal') required String id,
		@JsonKey(name: 'strMeal') required String name,
		@JsonKey(name: 'strCategory') String? category,
		@JsonKey(name: 'strArea') String? area,
		@JsonKey(name: 'strInstructions') String? instructions,
		@JsonKey(name: 'strMealThumb') String? image,
		@JsonKey(name: 'strTags') String? tags,
		@JsonKey(name: 'strYoutube') String? youtube,

    // Ingredients and measures (up to 20)
		@JsonKey(name: 'strIngredient1') String? ingredient1,
		@JsonKey(name: 'strIngredient2') String? ingredient2,
		@JsonKey(name: 'strIngredient3') String? ingredient3,
		@JsonKey(name: 'strIngredient4') String? ingredient4,
		@JsonKey(name: 'strIngredient5') String? ingredient5,
		@JsonKey(name: 'strIngredient6') String? ingredient6,
		@JsonKey(name: 'strIngredient7') String? ingredient7,
		@JsonKey(name: 'strIngredient8') String? ingredient8,
		@JsonKey(name: 'strIngredient9') String? ingredient9,
		@JsonKey(name: 'strIngredient10') String? ingredient10,
		@JsonKey(name: 'strIngredient11') String? ingredient11,
		@JsonKey(name: 'strIngredient12') String? ingredient12,
		@JsonKey(name: 'strIngredient13') String? ingredient13,
		@JsonKey(name: 'strIngredient14') String? ingredient14,
		@JsonKey(name: 'strIngredient15') String? ingredient15,
		@JsonKey(name: 'strIngredient16') String? ingredient16,
		@JsonKey(name: 'strIngredient17') String? ingredient17,
		@JsonKey(name: 'strIngredient18') String? ingredient18,
		@JsonKey(name: 'strIngredient19') String? ingredient19,
		@JsonKey(name: 'strIngredient20') String? ingredient20,

    // Measures (1 to 20)
		@JsonKey(name: 'strMeasure1') String? measure1,
		@JsonKey(name: 'strMeasure2') String? measure2,
		@JsonKey(name: 'strMeasure3') String? measure3,
		@JsonKey(name: 'strMeasure4') String? measure4,
		@JsonKey(name: 'strMeasure5') String? measure5,
		@JsonKey(name: 'strMeasure6') String? measure6,
		@JsonKey(name: 'strMeasure7') String? measure7,
		@JsonKey(name: 'strMeasure8') String? measure8,
		@JsonKey(name: 'strMeasure9') String? measure9,
		@JsonKey(name: 'strMeasure10') String? measure10,
		@JsonKey(name: 'strMeasure11') String? measure11,
		@JsonKey(name: 'strMeasure12') String? measure12,
		@JsonKey(name: 'strMeasure13') String? measure13,
		@JsonKey(name: 'strMeasure14') String? measure14,
		@JsonKey(name: 'strMeasure15') String? measure15,
		@JsonKey(name: 'strMeasure16') String? measure16,
		@JsonKey(name: 'strMeasure17') String? measure17,
		@JsonKey(name: 'strMeasure18') String? measure18,
		@JsonKey(name: 'strMeasure19') String? measure19,
		@JsonKey(name: 'strMeasure20') String? measure20,

    // Others
		@JsonKey(name: 'strDrinkAlternate') String? drinkAlternate,
		@JsonKey(name: 'strSource') String? sourceUrl,
		@JsonKey(name: 'strImageSource') String? imageSource,
		@JsonKey(name: 'strCreativeCommonsConfirmed') String? creativeCommonsConfirmed,
		@JsonKey(name: 'dateModified') String? dateModified,
	}) = _RecipeResponse;

	factory RecipeResponse.fromJson(Map<String, dynamic> json) =>
			_$RecipeResponseFromJson(json);
}
