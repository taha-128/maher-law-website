import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/theme/app_icons.dart';
import '../../../data/models/service_model.dart';
import 'service_widget.dart';

class HomeServicesGridView extends StatelessWidget {
  const HomeServicesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisExtent: 28.h,
          mainAxisSpacing: 4.h,
        ),
        itemBuilder: (context, index) {
          return ServiceWidget(service: servicesData[index]);
        },
      ),
    );
  }
}

List<ServiceModel> servicesData = [
  ServiceModel(
    icon: AppIcons.balance,
    title: 'تقديم الاستشارات القانونية',
    dsecription: 'المتعلّقة بجميع فروع القانون',
  ),
  ServiceModel(
    icon: AppIcons.hammer,
    title: 'عقود التكنولوجيا',
    dsecription: 'عقد توريد وترخيص استخدام البرمجيات',
  ),
  ServiceModel(
    icon: AppIcons.shield,
    title: 'عقود تطوير البرمجيات',
    dsecription: 'عقد شراكة فى تطبيق الكترونى',
  ),
  ServiceModel(
    icon: AppIcons.handshake,
    title: 'صياغة كلّ أنواع العقود',
    dsecription: 'باللّغتين العربية والإنجليزية',
  ),
];
