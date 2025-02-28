import 'package:flutter/material.dart';

import '../../../../core/widget/footer/footer_widget.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/about_section/home_tablet_about_section.dart';
import '../widgets/consultant_banner_widget.dart';
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
              // HomeWelcomeSection(),
              // HomeServicesTabletSection(),
              HomeTabletAboutSection(),
              ConsultantBanner(),
              HomeStepsSection(),
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
