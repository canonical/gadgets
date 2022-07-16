import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'providers/certification_status_provider.dart';

// via https://gist.github.com/NearHuscarl/29c5577b94571d00926723c85a370e43
Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}

Color adjustedAlpha(Color color, double multiplier) {
  final a = color.alpha.toDouble();
  final adjustedA = (a + a * multiplier).toInt();
  return color.withAlpha(max(0, min(255, adjustedA)));
}

Color intensified(ThemeData theme, Color color, [double amount = .1]) {
  if (theme.brightness == Brightness.light) {
    return darken(color);
  }
  return lighten(color);
}

Color barColor({required double value}) => Color.lerp(
    const Color.fromARGB(255, 255, 0, 8),
    const Color.fromARGB(255, 107, 212, 95),
    value)!;

Color barTitleColor({required double value}) => Color.lerp(
    const Color.fromARGB(255, 127, 0, 4),
    const Color.fromARGB(255, 53, 106, 47),
    value)!;

final kSelectionColor = Colors.green.shade300;
