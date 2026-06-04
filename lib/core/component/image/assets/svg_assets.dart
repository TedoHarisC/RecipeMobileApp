import 'dart:ui';

import 'package:recipe_app/core/component/image/design_assets.dart';

class SvgAssets extends DesignAssets {
  final String path;
  final Color? color;

  SvgAssets(
    this.path, {
    this.color,
  });
}
