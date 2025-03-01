import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/theme/app_styles.dart';
import 'decorated_button.dart';

class LearnMoreButton extends StatelessWidget {
  const LearnMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedButton(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'تعمق أكثر',
            style: AppStyles.style18bold(context).copyWith(color: Colors.white),
          ),
          SizedBox(width: 2.w),
          Icon(Icons.chat, color: Colors.white, size: 35)
        ],
      ),
    );
  }
}
