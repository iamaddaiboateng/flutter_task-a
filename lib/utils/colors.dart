import 'dart:math';

import 'package:flutter/material.dart';

class ColorUtil {
  // primary color for the app
  static const primaryColor = Colors.orange;

  // random colors
  static Color randomColor() {
    // list of all random colors
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.lightBlue,
      Colors.lightBlueAccent,
      Colors.blueAccent,
      Colors.brown,
      Colors.amber.shade800,
      Colors.deepOrange
    ];

    // get the random color
    Random random = Random();
    int colorIndex = random.nextInt(colors.length);

    return colors[colorIndex];
  }
}
