import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/widget/footer/footer_widget.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../../../../core/widget/refresh_indicator.dart';
import '../widgets/learn_more_button.dart';
import '../widgets/services_blogs_section.dart';
import '../widgets/services_header_section.dart';
import '../widgets/services_image_widget.dart';
import '../widgets/sliver_service_grid.dart';

class ServicesMobileLayout extends StatefulWidget {
  const ServicesMobileLayout({super.key});

  @override
  State<ServicesMobileLayout> createState() => _ServicesMobileLayoutState();
}

class _ServicesMobileLayoutState extends State<ServicesMobileLayout> {
  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: () async {
        setState(() {});
      },
      child: CustomScrollView(
        slivers: [
          SliverMobileNavBar(),
          SliverToBoxAdapter(child: ServicesHeaderSection()),
          SliverToBoxAdapter(child: SizedBox(height: 5.h)),
          SliverServicesGrid(),
          SliverToBoxAdapter(child: SizedBox(height: 3.h)),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [LearnMoreButton()],
                ),
                SizedBox(height: 6.h),
                ServicesMobileImageWidget(),
                SizedBox(height: 10.h),
                ServicesBlogsSection(),
                SizedBox(height: 10.h),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
