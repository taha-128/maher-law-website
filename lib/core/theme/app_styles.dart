import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maher_law/core/helpers/extensions/screen_details.dart';
import 'package:maher_law/core/theme/app_colors.dart';

import '../helpers/size_config.dart';

abstract class AppStyles {
  static TextStyle style16medium(BuildContext context) => GoogleFonts.cairo(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );
  static TextStyle style16bold(BuildContext context) => GoogleFonts.cairo(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.bold,
      );
  static TextStyle style18bold(BuildContext context) => GoogleFonts.cairo(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle style22bold(BuildContext context) => GoogleFonts.cairo(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        fontWeight: FontWeight.w900,
        color: Colors.white,
      );
  static TextStyle style30bold(BuildContext context) => GoogleFonts.cairo(
        fontSize: getResponsiveFontSize(context, fontSize: 40),
        fontWeight: FontWeight.bold,
        color: AppColors.darkGreen,
      );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = context.screenWidth;

  if (width < SizeConfig.mobile) {
    return width / 900;
  } else if (width < SizeConfig.tablet) {
    return width / 1000;
  } else {
    return width / 1400;
  }
}
