import 'package:flutter/material.dart';
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
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: false,
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 8.h,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return AboutFeatureWidget(text: features[index]);
      },
    );
  }
}

