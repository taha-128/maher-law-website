import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/nav_bar/sliver_nav_bar.dart';
import 'package:maher_law/features/home/presentation/widgets/consultant_banner_widget.dart';
import 'package:maher_law/features/home/presentation/widgets/rates_section/home_rates_section.dart';
import 'package:maher_law/features/home/presentation/widgets/services_section/home_services_section.dart';
import 'package:maher_law/features/home/presentation/widgets/steps_section/home_steps_section.dart';

import '../widgets/about_section/home_about_section.dart';
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
              HomeServicesSection(),
              HomeAboutSection(),
              ConsultantBanner(),
              HomeStepsSection(),
              HomeRatesSection()
            ],
          ),
        ),
      ],
    );
  }
}
