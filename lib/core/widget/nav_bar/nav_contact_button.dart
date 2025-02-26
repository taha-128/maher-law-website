import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      child: Row(
        spacing: 15,
        children: [
          Text(
            'تواصل معنا',
            textDirection: TextDirection.ltr,
            style: AppStyles.style16bold(context).copyWith(
              color: Colors.white,
              shadows: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: .5,
                  blurRadius: 30,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            AppIcons.whatsapp,
            width: 30,
          )
        ],
      ),
    );
  }
}
