import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.brandColor,
    required this.danger,
  });

  final Color? brandColor;
  final Color? danger;

  @override
  ThemeExtension<CustomColors> copyWith({
    Color? brandColor,
    Color? danger,
  }) {
    return CustomColors(
      brandColor: brandColor ?? this.brandColor,
      danger: danger ?? this.danger,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
      ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      brandColor: Color.lerp(brandColor, other.brandColor, t),
      danger: Color.lerp(danger, other.danger, t),
    );
  }

  // Optional
  @override
  String toString() => 'MyColors(brandColor: $brandColor, danger: $danger)';

  static const light = CustomColors(
    brandColor: Color(0xff28a745),
    danger: Color(0xffdc3545),
  );

  static const dark = CustomColors(
    brandColor: Color.fromARGB(255, 120, 223, 144),
    danger: Color.fromARGB(255, 204, 8, 28),
  );
}
