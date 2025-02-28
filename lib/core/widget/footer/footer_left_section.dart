import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../theme/app_styles.dart';

class FooterLeftSection extends StatelessWidget {
  const FooterLeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'اتصال',
          style: AppStyles.style18bold(context).copyWith(color: Colors.black),
        ),
        SizedBox(height: 8.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.h,
          children: [
            Text(
              'الهاتف: 123456789',
              style: AppStyles.style16medium(context).copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              'الايميل: example@gmail.com',
              style: AppStyles.style16medium(context).copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              'الايميل: example@gmail.com',
              style: AppStyles.style16medium(context).copyWith(
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
      ],
    );
  }
}
