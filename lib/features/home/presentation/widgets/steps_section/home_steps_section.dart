import 'package:flutter/material.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_images.dart';
import 'package:maher_law/core/widget/hover_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeStepsSection extends StatelessWidget {
  const HomeStepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      endScale: 1.01,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.h),
        width: SizeConfig.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              spreadRadius: 1,
              blurRadius: 30,
            ),
          ],
        ),
        height: 90.h,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                AppImages.court,
                width: SizeConfig.width,
                height: 90.h,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(40),
              ),
              width: SizeConfig.width,
              height: 90.h,
            ),
          ],
        ),
      ),
    );
  }
}
