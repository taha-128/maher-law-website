import 'package:flutter/material.dart';

abstract class SizeConfig {
  static const mobile = 600;
  static const tablet = 900;

  static late double width, height;

  static void init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
