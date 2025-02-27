import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/helpers/size_config.dart';
import 'home_services_grid_view.dart';
import 'home_services_image.dart';

class HomeServicesSection extends StatelessWidget {
  const HomeServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      color: Colors.grey.shade50,
      padding: EdgeInsets.only(
        top: 7.5.h,
        right: 6.w,
        left: 4.w,
        bottom: 7.5.h,
      ),
      width: SizeConfig.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: HomeServicesGridView()),
          // SizedBox(width: 10.w),
          HomeServicesImage(),
        ],
      ),
    );
  }
}
