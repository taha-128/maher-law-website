import 'package:flutter/material.dart';
import 'package:maher_law/core/theme/app_colors.dart';
import 'package:maher_law/core/widget/footer/footer_center_section.dart'
    show FooterCenterSection;
import 'package:maher_law/core/widget/footer/footer_left_section.dart'
    show FooterLeftSection;
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../helpers/size_config.dart';
import '../../theme/app_styles.dart';
import 'footer_right_section.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.cyan,
          width: SizeConfig.width,
          padding: EdgeInsets.only(
            top: 5.h,
            right: SizeConfig.isMobile ? 3.w : 8.w,
            left: 3.w,
            bottom: 8.h,
          ),
          child: SizeConfig.width > SizeConfig.mobile
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8.w,
                  children: [
                    Expanded(child: FooterRightSection()),
                    Expanded(child: FooterCenterSection()),
                    Expanded(child: FooterLeftSection()),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 8.w,
                  children: [
                    FooterRightSection(),
                    FooterCenterSection(),
                    FooterLeftSection(),
                  ],
                ),
        ),
        Container(
          color: AppColors.orange,
          padding: EdgeInsets.symmetric(vertical: 20),
          width: SizeConfig.width,
          child: Center(
            child: Text(
              '© حقوق النشر ٢٠٢٥. جميع الحقوق محفوظة لمهار الشافعي | maher-law',
              textAlign: TextAlign.center,
              style: AppStyles.style16medium(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
