import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maher_law/core/theme/app_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../theme/app_colors.dart';
import '../theme/app_icons.dart';

class WhatsappButton extends StatelessWidget {
  const WhatsappButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        try {
          launchUrlString('https://wa.me/01050764021');
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Center(
                child: Text(
                  'هناك خطأ ما يمكنك محادثتنا عبر رقم الواتس 201050764021',
                  style: AppStyles.style16bold(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        }
      },
      backgroundColor: AppColors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: SvgPicture.asset(AppIcons.whatsapp),
      ),
    );
  }
}
