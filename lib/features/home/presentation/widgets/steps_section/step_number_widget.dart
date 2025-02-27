import 'package:flutter/material.dart';
import 'package:maher_law/core/helpers/extensions/numbers_convertor.dart';
import 'package:morphable_shape/morphable_shape.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';

class StepNumberWidget extends StatelessWidget {
  const StepNumberWidget({super.key, required this.index, this.color});

  final int index;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return DecoratedShadowedShape(
      shape: RectangleShapeBorder(
        borderRadius: const DynamicBorderRadius.all(
          DynamicRadius.circular(Length(100)),
        ),
        cornerStyles: RectangleCornerStyles.all(CornerStyle.straight),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 5.w,
        height: 5.w,
        color: color ?? AppColors.orange,
        child: Center(
          child: Text(
            index.toArabic(),
            style: AppStyles.style22bold(context),
          ),
        ),
      ),
    );
  }
}
