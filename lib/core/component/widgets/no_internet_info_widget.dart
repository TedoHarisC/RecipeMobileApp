import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/theme/app_padding.dart';
import 'package:recipe_app/core/theme/app_radius.dart';

class NoInternetInfoWidget extends StatelessWidget {
  const NoInternetInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primary = theme.colorScheme.primary;
    final surface = theme.colorScheme.surface;

    return Padding(
      padding: AppPadding.largeHorizontal.add(
        const EdgeInsets.symmetric(vertical: AppPadding.xl),
      ),
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          padding: EdgeInsets.zero,
          radius: Radius.circular(AppRadius.lg),
          strokeWidth: 3,
          color: primary,
          dashPattern: [6, 2],
        ),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(minHeight: 180),
          decoration: BoxDecoration(
            color: surface,
            borderRadius: BorderRadius.circular(AppRadius.lg),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                primary.withAlpha(18),
                surface,
              ],
            ),
          ),
          child: Padding(
            padding: AppPadding.large,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppPadding.lg),
                  decoration: BoxDecoration(
                    color: primary.withAlpha(20),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.wifi_off_rounded,
                    size: 44,
                    color: primary,
                  ),
                ),
                const SizedBox(height: AppPadding.lg),
                Text(
                  "No Internet Connection",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppPadding.sm),
                Text(
                  "Check your connection and try again.",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
