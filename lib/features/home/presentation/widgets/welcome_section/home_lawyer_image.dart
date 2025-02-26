import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_images.dart';
import '../../../../../core/widget/hover_button.dart';

class HomeLawyerImage extends StatelessWidget {
  const HomeLawyerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      endScale: 1.02,
      onTap: () {},
      child: Container(
        height: 60.h,
        width: 38.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: .5,
              blurRadius: 30,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset(
            AppImages.lawyer,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.error,
                size: 40,
                color: AppColors.orange,
              );
            },
          ),
        ),
      ),
    );
  }
}
