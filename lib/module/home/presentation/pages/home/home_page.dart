import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/component/image/design_image.dart';
import 'package:recipe_app/core/component/textfield/design_textfield.dart';
import 'package:recipe_app/core/component/widgets/design_theme_switch.dart';
import 'package:recipe_app/core/constant/bloc/bloc_status.dart';
import 'package:recipe_app/core/extensions/build_context_ext.dart';
import 'package:recipe_app/core/theme/app_color.dart';
import 'package:recipe_app/core/theme/app_padding.dart';
import 'package:recipe_app/core/theme/app_radius.dart';
import 'package:recipe_app/core/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';
import 'package:recipe_app/module/home/presentation/pages/home/cubit/category/category_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

part 'widget/category_widget.dart';

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
                return _LoadingCategoriesWidget();
              } else if (state.status == BlocStatus.error) {
                return SizedBox();
              }

              return _CategoriesWidget(categories: state.categories);
            },
          ),
        ],
      ),
    );
  }
}
