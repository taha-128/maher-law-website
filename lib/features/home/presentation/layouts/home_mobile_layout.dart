import 'package:flutter/material.dart';

import '../../../../core/widget/footer/footer_widget.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/consultant_mobile_banner_widget.dart';
import '../widgets/rates_section/home_rates_section.dart';
import '../widgets/steps_section/home_steps_section.dart';

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverMobileNavBar(),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              // HomeMobileWelcomeSection(),
              // SizedBox(height: 30),
              // HomeServicesTabletSection(),
              // SizedBox(height: 20),
              // HomeTabletAboutSection(),
              // ConsultantMobileBanner(),
              // HomeMobileStepsSection(),
              HomeRatesSection(),
              Spacer(),
              Footer(),
            ],
          ),
        ),
      ],
    );
  }
}
