import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/hover_button.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import '../../../../../core/widget/custom_button.dart';

class HomeWelcomeDetails extends StatelessWidget {
  const HomeWelcomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ماهر الشافعي',
          style: AppStyles.style46bold(context),
        ),
        SizedBox(height: 16),
        Text(
          'عقود للخدمات والاستشارات القانونية، عقود للخدمات والاستشارات القانونية، عقود للخدمات والاستشارات القانونية،عقود للخدمات والاستشارات القانونية، عقود للخدمات والاستشارات القانونية، عقود للخدمات والاستشارات.',
          style: AppStyles.style16medium(context),
        ),
        SizedBox(height: 24),
        Row(
          spacing: 10,
          children: [
            HoverButton(
              endScale: 1.03,
              child: CustomButton(
                color: AppColors.orange,
                onPressed: () {},
                child: Text(
                  'طلب استشارة',
                  style: AppStyles.style16bold(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // HoverButton(
            //   endScale: 1.03,
            //   child: CustomButton(
            //     padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            //     onPressed: () {},
            //     child: Text(
            //       'من نحن',
            //       style: AppStyles.style16bold(context).copyWith(
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        )
      ],
    );
  }
}
