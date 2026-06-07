part of '../home_page.dart';

class _CategoriesWidget extends StatelessWidget {
  final List<CategoryEntity> categories;

  const _CategoriesWidget({this.categories = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppPadding.largeHorizontal,
          child: Text(
            "Categories",
            style: context.textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: 80,
          child: ListView.separated(
            padding: AppPadding.large,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (_, _) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final category = categories[index];

              return GestureDetector(
                onTap: () {
                  // Handle category tap
                },
                child: ClipRRect(
                  borderRadius: AppRadius.small,
                  child: Skeleton.leaf(
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.colorScheme.primary,
                        borderRadius: AppRadius.small,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DesignImage(
                            NetworkAssets(category.thumbnailUrl ?? ''),
                            fit: BoxFit.cover,
                            width: 88,
                            height: 88,
                            borderRadius: AppRadius.small,
                          ),
                          Padding(
                            padding: AppPadding.medium,
                            child: Text(
                              category.name,
                              style: context.textTheme.titleMedium?.copyWith(
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _LoadingCategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Skeletonizer.zone(
      child: _CategoriesWidget(
        categories: [
          CategoryEntity(
            id: '',
            name: BoneMock.title,
            thumbnailUrl: '',
            description: '',
          ),
          CategoryEntity(
            id: '',
            name: BoneMock.title,
            thumbnailUrl: '',
            description: '',
          ),
        ],
      ),
    );
  }
}
