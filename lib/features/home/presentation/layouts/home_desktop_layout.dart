import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/nav_bar/sliver_nav_bar.dart';
import 'package:maher_law/features/home/presentation/widgets/services_section/home_services_section.dart';

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
            ],
          ),
        ),
      ],
    );
  }
}
