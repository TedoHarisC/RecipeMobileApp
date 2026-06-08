import 'package:recipe_app/core/component/image/design_image.dart';
import 'package:recipe_app/core/component/list_tile/design_list_tile.dart';
import 'package:recipe_app/core/extensions/build_context_ext.dart';
import 'package:recipe_app/core/theme/app_radius.dart';
import 'package:recipe_app/module/home/presentation/widgets/category_chip_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecipeListItemWidget extends StatelessWidget {
  const RecipeListItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.area,
    required this.category,
    this.isSaved = false,
    this.onClick,
    this.onClickSaved,
  });

  final String image;
  final String title;
  final String? area;
  final String? category;
  final bool isSaved;
  final void Function()? onClick;
  final void Function()? onClickSaved;

  @override
  Widget build(BuildContext context) {
    return DesignListTile(
      onTap: onClick,
      showDefaultTrailing: false,
      leading: DesignImage(
        NetworkAssets(image),
        width: 86,
        height: 86,
        borderRadius: AppRadius.small,
        fit: BoxFit.cover,
      ),
      trailing: onClickSaved != null
          ? Skeleton.ignore(
              child: IconButton(
                onPressed: onClickSaved,
                icon: isSaved
                    ? Icon(Icons.bookmark_rounded)
                    : Icon(Icons.bookmark_outline_rounded),
                color: context.colorScheme.primary,
              ),
            )
          : null,
      title: Skeleton.leaf(
        child: Text(
          title,
          style: context.textTheme.bodyLarge,
          maxLines: 2,
        ),
      ),
      subtitle: Wrap(
        spacing: 4,
        runSpacing: 4,
        children: [
          if (area != null)
            Skeleton.leaf(
              child: CategoryChip(
                iconData: Icons.place_outlined,
                text: area ?? "",
              ),
            ),
          if (category != null)
            Skeleton.leaf(
              child: CategoryChip(
                iconData: Icons.fastfood_rounded,
                text: category ?? "",
              ),
            ),
        ],
      ),
    );
  }
}
