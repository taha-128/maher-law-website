import 'package:flutter/material.dart';

import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/home_welcome_section.dart';

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverMobileNavBar(),
        SliverFillRemaining(
          child: SizedBox(
            child: Column(
              children: [
                HomeWelcomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
