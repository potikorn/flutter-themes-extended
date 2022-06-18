import 'package:custom_theme/themes/colors.dart';
import 'package:custom_theme/themes/dimensions.dart';
import 'package:custom_theme/themes/typography.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class AppThemeUtils {
  static AppTheme customLightTheme = AppTheme(
    id: 'custom_light_theme',
    description: 'Custom light theme',
    data: ThemeData.light().copyWith(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.green,
        secondary: Colors.red,
        background: Colors.green,
      ),
      extensions: <ThemeExtension<dynamic>>[
        CustomColors.light,
        CustomTypography.light,
        Dimensions.initialize,
      ],
    ),
  );

  static AppTheme customDarkTheme = AppTheme(
    id: 'custom_dark_theme',
    description: 'Custom dark theme',
    data: ThemeData.dark().copyWith(
      extensions: <ThemeExtension<dynamic>>[
        CustomColors.dark,
        CustomTypography.dark,
        Dimensions.initialize,
      ],
    ),
  );

  static List<AppTheme> getThemes() => [
        customLightTheme,
        customDarkTheme,
      ];
}
