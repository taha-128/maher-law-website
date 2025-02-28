
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../theme/app_styles.dart';

class FooterCenterSection extends StatelessWidget {
  const FooterCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ساعات العمل',
          style: AppStyles.style18bold(context).copyWith(color: Colors.black),
        ),
        SizedBox(height: 8.h),
        Column(
          spacing: 10.h,
          children: [
            Text(
              'من الأحد إلى الاربعاء................',
              style: AppStyles.style16medium(context).copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              'من الأحد إلى الاربعاء................',
              style: AppStyles.style16medium(context).copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              'من الأحد إلى الاربعاء................',
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
