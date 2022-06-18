import 'package:custom_theme/themes/colors.dart';
import 'package:custom_theme/themes/dimensions.dart';
import 'package:custom_theme/themes/typography.dart';
import 'package:flutter/material.dart';

class CustomThemeModel {
  const CustomThemeModel({
    required this.colors,
    required this.typography,
    required this.dimensions,
  });

  final CustomColors colors;
  final CustomTypography typography;
  final Dimensions dimensions;
}

class ThemeUtils {
  static CustomColors? colorTheme(BuildContext context) =>
      Theme.of(context).extension<CustomColors>();

  static CustomTypography? textTheme(BuildContext context) =>
      Theme.of(context).extension<CustomTypography>();

  static Dimensions? dimensionsTheme(BuildContext context) =>
      Theme.of(context).extension<Dimensions>();

  static CustomThemeModel themeData(BuildContext context) {
    return CustomThemeModel(
      colors: colorTheme(context)!,
      typography: textTheme(context)!,
      dimensions: dimensionsTheme(context)!,
    );
  }
}
