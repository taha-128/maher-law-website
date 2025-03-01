import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/nav_bar/sliver_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/widget/footer/footer_widget.dart';
import '../widgets/about_section/home_desktop_about_section.dart';
import '../widgets/consultant_banner_widget.dart';
import '../widgets/rates_section/home_rates_section.dart';
import '../widgets/services_section/home_services_desktop_section.dart';
import '../widgets/steps_section/home_steps_section.dart';
import '../widgets/welcome_section/home_welcome_section.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverDesktopNavBar(),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              HomeWelcomeSection(),
              HomeServicesDesktopSection(),
              HomeDesktopAboutSection(),
              ConsultantBanner(),
              HomeStepsSection(),
              HomeRatesSection(),
              SizedBox(height: 8.h),
              Footer(),
            ],
          ),
        ),
      ],
    );
  }
}
