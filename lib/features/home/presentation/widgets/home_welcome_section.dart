import 'package:flutter/material.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_styles.dart';

class HomeWelcomeSection extends StatelessWidget {
  const HomeWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.width,
      child: Column(
        children: [
          Text(
            'الوكيل القانوني',
            style: AppStyles.style30bold(context),
          )
        ],
      ),
    );
  }
}
