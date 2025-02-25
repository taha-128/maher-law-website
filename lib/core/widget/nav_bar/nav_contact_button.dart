import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_colors.dart';
import 'package:maher_law/core/theme/app_icons.dart';

import '../../theme/app_styles.dart';

class NavContactButton extends StatelessWidget {
  const NavContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      color: AppColors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: SizeConfig.width > SizeConfig.tablet
          ? Row(
              spacing: 15,
              children: [
                Text(
                  '01050764021',
                  textDirection: TextDirection.ltr,
                  style: AppStyles.style16bold(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.phone,
                )
              ],
            )
          : SvgPicture.asset(
              AppIcons.phone,
            ),
    );
  }
}
