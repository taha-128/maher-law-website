import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import '../../../../../core/widget/custom_button.dart';
import 'home_about_features.dart';

class HomeAboutDetails extends StatelessWidget {
  const HomeAboutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'معلومات عنّا',
          style: AppStyles.style16bold(context).copyWith(
            color: Colors.black38,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          'الوسيط القانوني',
          style: AppStyles.style40bold(context).copyWith(
            color: AppColors.green,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          ' هي شركة محاماة متخصصة في تقديم الخدمات القانونية والاستشارات القانونية والاقتصادية لرواد الأعمال والشركات الناشئة، خاصة في مجال العقود البرمجية والتكنولوجيا. تتميز شركتنا بالمزايا التالية:',
          textAlign: TextAlign.center,
          style: AppStyles.style16bold(context).copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 4.h),
        Expanded(child: HomeAboutFeatures()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              borderRadius: 14,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'اعرف المزيد',
                    style: AppStyles.style16bold(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_right_rounded,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
