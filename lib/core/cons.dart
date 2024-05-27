import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static const Color kPrime = Color(0xFF00B2E7);
  static const Color ksecoundry = Color(0xFFE064F7);
  static const Color kthird = Color(0xFFFF8D6C);

  static const myGradient = LinearGradient(
    colors: [
      kthird,
      ksecoundry,
      kPrime,
    ],
    transform: GradientRotation(pi / 4),
  );
}
