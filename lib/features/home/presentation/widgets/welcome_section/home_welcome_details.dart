import 'package:flutter/material.dart';
import 'package:maher_law/core/helpers/size_config.dart';
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
      crossAxisAlignment: SizeConfig.width < SizeConfig.tablet
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          'الوسيط القانوني',
          textAlign: !SizeConfig.isDesktop ? TextAlign.center : null,
          style: AppStyles.style46bold(context),
        ),
        SizedBox(height: 16),
        Text(
          'نحرص على إيجاد الحل الأمثل للعقود التكنولوجية، ويسعى فريقنا إلى النجاح في تحقيق أهداف عملائنا والحفاظ على مصالحهم القانونية.',
          textAlign: !SizeConfig.isDesktop ? TextAlign.center : null,
          style: AppStyles.style16medium(context),
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: SizeConfig.width < SizeConfig.tablet
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
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
