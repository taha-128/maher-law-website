import 'package:flutter/material.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'home_feature_widget.dart';

class HomeAboutFeatures extends StatelessWidget {
  const HomeAboutFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> features = [
      'نسعى دائماً لتحسين خدماتنا وتطويرها',
      'مقالات ونماذج عقود مجانية',
      'خدمات قانونية متنوعة ومتكاملة',
      'فريقاً من الخبراء المتخصصين',
      'الجودة والمهنية والسرية',
      'أول متجر قانوني إلكتروني',
    ];
    if (SizeConfig.width < SizeConfig.mobile) {
      return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemCount: features.length,
        itemBuilder: (context, index) {
          return AboutFeatureWidget(text: features[index]);
        },
        separatorBuilder: (context, index) => SizedBox(height: 4.h),
      );
    } else {
      return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: false,
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 8.h,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return AboutFeatureWidget(text: features[index]);
        },
      );
    }
  }
}
