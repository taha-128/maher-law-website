import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maher_law/core/helpers/extensions/screen_details.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_colors.dart';

import '../../theme/app_styles.dart';
import '../custom_elevated_button.dart';

class NavContactButton extends StatelessWidget {
  const NavContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: CustomElevatedButton(
        onPressed: () {},
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 25.h),
        backgroundColor: AppColors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: context.screenWidth > SizeConfig.tablet
            ? Row(
                spacing: 15.w,
                children: [
                  Text(
                    '01121343536',
                    textDirection: TextDirection.ltr,
                    style: AppStyles.style16bold.copyWith(color: Colors.white),
                  ),
                  Icon(
                    CupertinoIcons.phone,
                    color: Colors.white,
                    size: 22,
                  ),
                ],
              )
            : Icon(
                CupertinoIcons.phone,
                color: Colors.white,
                size: 22,
              ),
      ),
    );
  }
}
