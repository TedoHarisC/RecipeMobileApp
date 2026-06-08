import 'package:recipe_app/core/extensions/build_context_ext.dart';
import 'package:recipe_app/core/theme/app_padding.dart';
import 'package:recipe_app/core/theme/app_radius.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.iconData,
    required this.text,
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.small,
      decoration: BoxDecoration(
        borderRadius: AppRadius.small,
        color: context.colorScheme.primary,
      ),
      child: Row(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: context.colorScheme.onInverseSurface,
            size: 16,
          ),
          Text(
            text,
            style: context.textTheme.labelMedium?.copyWith(
              color: context.colorScheme.onInverseSurface,
            ),
          ),
        ],
      ),
    );
  }
}
