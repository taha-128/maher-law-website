import 'package:flutter/material.dart';
import 'package:maher_law/core/theme/app_styles.dart';
import 'package:maher_law/features/services/presentation/widgets/decorated_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/helpers/size_config.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_images.dart';

class ServicesImageWidget extends StatelessWidget {
  const ServicesImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: SizeConfig.width,
      height: 85.h,
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.white),
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
          image: AssetImage(AppImages.team),
          fit: BoxFit.fitWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withAlpha(60),
            spreadRadius: 10,
            blurRadius: 20,
            // offset: Offset(0, 3),
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.grey.withAlpha(140),
              AppColors.grey.withAlpha(200),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'نحن نقدم لك',
              style: AppStyles.style30medium(context),
            ),
            SizedBox(height: 4.h),
            Text(
              'أفضل حل قانوني',
              style: AppStyles.style55bold(context).copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 6.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DecoratedButton(
                  onTap: () {},
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 1.2.h,
                  ),
                  child: Text(
                    'احجز موعد',
                    style: AppStyles.style16bold(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 1.w),
                DecoratedButton(
                  onTap: () {},
                  reversed: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 1.2.h,
                  ),
                  child: Text(
                    'اطلب استشارة',
                    style: AppStyles.style16bold(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
