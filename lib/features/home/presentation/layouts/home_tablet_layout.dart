import 'package:flutter/material.dart';

import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/welcome_section/home_welcome_section.dart';

class HomeTabletLayout extends StatelessWidget {
  const HomeTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverTabletNavBar(),
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
