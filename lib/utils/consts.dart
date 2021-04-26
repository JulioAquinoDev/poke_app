

import 'dart:ui';

class AppConsts{

  static double widthPercentage;
  static double heightPercentage;

  static double widthSize;
   static double heightSize;

  static const double xdwidthSize = 375.0;
  static const double xdheightSize = 667.0;

  static void setWidthSize(double size){
    widthSize = size;
    widthPercentage = widthSize / xdwidthSize;
  }

  static void setHeightSize(double size){
    heightSize = size;
    heightPercentage = heightSize / xdheightSize;
  }

}