import 'dart:ui';

import 'package:flutter/material.dart';

class Dimensions extends ThemeExtension<Dimensions> {
  const Dimensions({
    required this.xxs,
    required this.xs,
    required this.s,
    required this.m,
    required this.l,
    required this.xl,
    required this.xxl,
  });

  final double xxs;
  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;

  @override
  ThemeExtension<Dimensions> copyWith({
    double? xxs,
    double? xs,
    double? s,
    double? m,
    double? l,
    double? xl,
    double? xxl,
  }) {
    return Dimensions(
      xxs: this.xxs,
      xs: this.xs,
      s: this.s,
      m: this.m,
      l: this.l,
      xl: this.xl,
      xxl: this.xxl,
    );
  }

  @override
  ThemeExtension<Dimensions> lerp(ThemeExtension<Dimensions>? other, double t) {
    if (other is! Dimensions) {
      return this;
    }
    return Dimensions(
      xxs: lerpDouble(xxs, other.xxs, t) ?? 4.0,
      xs: lerpDouble(xs, other.xs, t) ?? 8.0,
      s: lerpDouble(s, other.s, t) ?? 12.0,
      m: lerpDouble(m, other.m, t) ?? 16.0,
      l: lerpDouble(l, other.l, t) ?? 20.0,
      xl: lerpDouble(xl, other.xl, t) ?? 24.0,
      xxl: lerpDouble(xxl, other.xxl, t) ?? 28.0,
    );
  }

  static const initialize = Dimensions(
    xxs: 4.0,
    xs: 8.0,
    s: 12.0,
    m: 16.0,
    l: 20.0,
    xl: 24.0,
    xxl: 28.0,
  );
}
