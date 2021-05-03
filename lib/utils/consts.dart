import 'package:flutter/cupertino.dart';

class AppConsts {
  static double widthPercentage;
  static double heightPercentage;

  static double widthSize;
  static double heightSize;

  static const double xdWidthSize = 375.0;
  static const double xdHeightSize = 667.0;

  static void setWidthSize(double size) {
    widthSize = size;
    widthPercentage = widthSize / xdWidthSize;
  }

  static void setHeightSize(double size) {
    heightSize = size;
    heightPercentage = heightSize / xdHeightSize;
  }

  static Color primaryColor = const Color(0xFFffe270);
  static Color secundaryColor = const Color(0xFFfc5f00);
}
