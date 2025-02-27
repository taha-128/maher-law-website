import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/nav_bar/sliver_nav_bar.dart';
import 'package:maher_law/features/home/presentation/widgets/rates_section/home_rates_section.dart';

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
              // HomeWelcomeSection(),
              // HomeServicesSection(),
              // HomeAboutSection(),
              // ConsultantBanner(),
              // HomeStepsSection(),
              HomeRatesSection(),
            ],
          ),
        ),
      ],
    );
  }
}
