import 'package:flutter/material.dart';

class ResponsiveHelper {
  final BuildContext context;
  late double screenWidth;

  ResponsiveHelper(this.context) {
    screenWidth = MediaQuery.of(context).size.width;
  }

  double getContainerWidth() {
    if (screenWidth < 600) {
      return screenWidth * 0.9; // Phone
    } else if (screenWidth < 1200) {
      return 700; // Tablet
    } else {
      return 865; // Desktop
    }
  }

  // We do not specify the length and make it depend on the content.
  double? getContainerHeight() {
    return null;
  }
}
