import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_styles.dart';
import 'package:maher_law/core/widget/hover_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_icons.dart';

class ConsultantBanner extends StatelessWidget {
  const ConsultantBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return HoverButton(
      endScale: 1.05,
      child: Container(
        padding: EdgeInsets.only(top: 40, bottom: 40, left: 80),
        margin: EdgeInsets.symmetric(vertical: 5.h),
        width: SizeConfig.width * .8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            colors: [
              AppColors.orange,
              AppColors.green,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Row(
          children: [
            Spacer(),
            Column(
              children: [
                Text(
                  'اطلب استشارة الان',
                  style: AppStyles.style22bold(context).copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'يمكنك الوصول إلينا بسهولة وسرعة',
                  style: AppStyles.style16medium(context),
                ),
              ],
            ),
            Spacer(),
            MaterialButton(
              splashColor: AppColors.green,
              elevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              onPressed: () {},
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              color: Colors.white24,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                spacing: 15,
                children: [
                  Text(
                    'من خلال الواتس',
                    textDirection: TextDirection.ltr,
                    style: AppStyles.style16bold(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SvgPicture.asset(
                    AppIcons.whatsapp,
                    width: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
