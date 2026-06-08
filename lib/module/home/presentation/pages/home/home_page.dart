import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/component/textfield/design_textfield.dart';
import 'package:recipe_app/core/component/widgets/design_theme_switch.dart';
import 'package:recipe_app/core/component/widgets/no_internet_info_widget.dart';
import 'package:recipe_app/core/constant/bloc/bloc_status.dart';
import 'package:recipe_app/core/constant/network/failure.dart';
import 'package:recipe_app/core/extensions/build_context_ext.dart';
import 'package:recipe_app/core/theme/app_color.dart';
import 'package:recipe_app/core/theme/app_padding.dart';
import 'package:recipe_app/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/module/home/presentation/pages/home/cubit/category/category_cubit.dart';
import 'package:recipe_app/module/home/presentation/pages/home/cubit/random_recipe/random_recipe_cubit.dart';
import 'package:recipe_app/module/home/presentation/pages/home/widget/category_widget.dart';
import 'package:recipe_app/module/home/presentation/pages/home/widget/recipe_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Add your BlocProviders here
        BlocProvider(
          create: (context) => CategoryCubit(di())..getCategoryRecipe(),
        ),
        BlocProvider(
          create: (context) => RandomRecipeCubit(di())..getRandomRecipes(),
        ),
      ],
      child: const HomeUI(),
    );
  }
}

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find your meals today!",
          style: context.textTheme.titleMedium,
        ),
        centerTitle: false,
        actions: [DesignThemeSwitch(), const SizedBox(width: 16)],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: GestureDetector(
            onTap: () {
              // Navigate to search page
            },
            child: Container(
              margin: AppPadding.largeHorizontal.add(
                const EdgeInsets.only(bottom: AppPadding.lg),
              ),
              decoration: BoxDecoration(
                color: AppColor.neutral.shade700,
                borderRadius: BorderRadius.circular(16),
              ),
              child: DesignTextfield(
                enabled: false,
                type: DesignTextfieldType.none,
                prefix: Icon(Icons.search, color: AppColor.neutral.shade500),
                hintText: "Type what you think !!",
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          // Add your home page content here
          BlocBuilder<CategoryCubit, CategoryState>(
            builder: (context, state) {
              if (state.status == BlocStatus.loading) {
                return const LoadingCategoriesWidget();
              } else if (state.status == BlocStatus.error) {
                return SizedBox();
              }

              return CategoriesWidget(categories: state.categories);
            },
          ),
          BlocBuilder<RandomRecipeCubit, RandomRecipeState>(
            builder: (context, state) {
              if (state.isLoading == BlocStatus.loading) {
                return const LoadingRandomRecipeWidget();
              } else if (state.isLoading == BlocStatus.error) {
                if (state.failure is NetworkFailure) {
                  return const NoInternetInfoWidget();
                }

                return const LoadingRandomRecipeWidget();
              }

              return RandomRecipeWidget(recipes: state.randomRecipes);
            },
          ),
        ],
      ),
    );
  }
}
