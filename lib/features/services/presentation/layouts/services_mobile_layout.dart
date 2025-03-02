import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/widget/footer/footer_widget.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/learn_more_button.dart';
import '../widgets/services_blogs_section.dart';
import '../widgets/services_header_section.dart';
import '../widgets/services_image_widget.dart';
import '../widgets/sliver_service_grid.dart';

class ServicesMobileLayout extends StatelessWidget {
  const ServicesMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverMobileNavBar(),
        SliverToBoxAdapter(child: ServicesHeaderSection()),
        SliverServicesGrid(),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              // SizedBox(height: .h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [LearnMoreButton()],
              ),
              SizedBox(height: 6.h),
              ServicesImageWidget(),
              SizedBox(height: 10.h),
              ServicesBlogsSection(),
              SizedBox(height: 10.h),
              Footer(),
            ],
          ),
        ),
      ],
    );
  }
}
