import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maher_law/core/theme/app_icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/helpers/size_config.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import 'customers_rate_list.dart';

class HomeRatesSection extends StatelessWidget {
  const HomeRatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: SizeConfig.width,
      color: Colors.grey.shade50,
      padding: EdgeInsets.only(
        top: 7.5.h,
        right: 6.w,
        left: 4.w,
        bottom: 7.5.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              SvgPicture.asset(
                AppIcons.stars,
                height: 5.h,
              ),
              SvgPicture.asset(
                AppIcons.stars,
                height: 5.h,
              ),
            ],
          ),
          SizedBox(height: 14),
          Text(
            'ماذا قال عملاؤنا؟',
            style: AppStyles.style16bold(context).copyWith(
              color: Colors.black45,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'الشهادات',
            style: AppStyles.style40bold(context).copyWith(
              color: AppColors.green,
            ),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            width: SizeConfig.width > SizeConfig.tablet ? 50.w : 80.w,
            height: 34.h,
            child: CustomersRateList(),
          ),
        ],
      ),
    );
  }
}
