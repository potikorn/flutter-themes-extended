import 'package:flutter/material.dart';

class CustomTypography extends ThemeExtension<CustomTypography> {
  const CustomTypography({
    required this.paragraph01Light,
    required this.paragraph01Regular,
    required this.paragraph01SemiBold,
  });

  final TextStyle? paragraph01Regular;
  final TextStyle? paragraph01SemiBold;
  final TextStyle? paragraph01Light;

  @override
  ThemeExtension<CustomTypography> copyWith({
    TextStyle? paragraph01Regular,
    TextStyle? paragraph01SemiBold,
    TextStyle? paragraph01Light,
  }) {
    return CustomTypography(
      paragraph01Regular: paragraph01Regular ?? this.paragraph01Regular,
      paragraph01Light: paragraph01Light ?? this.paragraph01Light,
      paragraph01SemiBold: paragraph01SemiBold ?? this.paragraph01SemiBold,
    );
  }

  @override
  ThemeExtension<CustomTypography> lerp(
      ThemeExtension<CustomTypography>? other, double t) {
    if (other is! CustomTypography) {
      return this;
    }
    return CustomTypography(
      paragraph01Regular:
          TextStyle.lerp(paragraph01Regular, other.paragraph01Regular, t),
      paragraph01SemiBold:
          TextStyle.lerp(paragraph01SemiBold, other.paragraph01SemiBold, t),
      paragraph01Light:
          TextStyle.lerp(paragraph01Light, other.paragraph01Light, t),
    );
  }

  static const light = CustomTypography(
    paragraph01Regular: TextStyle(
      fontFamily: 'Prompt',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    paragraph01Light: TextStyle(
      fontFamily: 'Prompt',
      fontSize: 16,
      fontWeight: FontWeight.w200,
    ),
    paragraph01SemiBold: TextStyle(
      fontFamily: 'Prompt',
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );

  static const dark = CustomTypography(
    paragraph01Regular: TextStyle(
      fontFamily: 'Prompt',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    paragraph01Light: TextStyle(
      fontFamily: 'Prompt',
      fontSize: 16,
      fontWeight: FontWeight.w200,
    ),
    paragraph01SemiBold: TextStyle(
      fontFamily: 'Prompt',
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  );
}
