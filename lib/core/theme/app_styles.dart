import 'dart:ui';

import 'package:flutter/material.dart';

import '../helpers/size_config.dart';

abstract class AppStyles {
  static final style16bold = TextStyle(
    fontSize: getResponsiveFontSize(16),
    fontWeight: FontWeight.bold,
  );
}

double getResponsiveFontSize(double fontSize) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.tablet) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
