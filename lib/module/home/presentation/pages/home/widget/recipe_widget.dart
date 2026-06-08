import 'package:flutter/material.dart';
import 'package:recipe_app/core/extensions/build_context_ext.dart';
import 'package:recipe_app/core/theme/app_padding.dart';
import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';
import 'package:recipe_app/module/home/presentation/widgets/recipe_list_item_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RandomRecipeWidget extends StatelessWidget {
  final List<RecipeEntity> recipes;

  const RandomRecipeWidget({super.key, this.recipes = const []});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.largeHorizontal,
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Random Recipes",
            style: context.textTheme.titleMedium,
          ),
          ...recipes.map((recipe) {
            return RecipeListItemWidget(
              image: recipe.thumbnailUrl ?? '',
              title: recipe.title,
              area: recipe.area,
              category: recipe.category,
              isSaved: recipe.isSaved,
              onClick: () {},
              onClickSaved: () {},
            );
          }),
        ],
      ),
    );
  }
}

class LoadingRandomRecipeWidget extends StatelessWidget {
  const LoadingRandomRecipeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      child: RandomRecipeWidget(
        recipes: List.generate(
          5,
          (index) => RecipeEntity(
            id: '',
            title: BoneMock.title,
            ingredients: [],
            area: BoneMock.title,
          ),
        ),
      ),
    );
  }
}
