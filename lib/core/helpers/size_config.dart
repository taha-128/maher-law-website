import 'package:flutter/material.dart';

abstract class SizeConfig {
  static const mobile = 700;
  static const tablet = 1050;

  static late double width, height;

  static void init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
