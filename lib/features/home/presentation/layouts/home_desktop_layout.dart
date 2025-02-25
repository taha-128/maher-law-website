import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/nav_bar/sliver_nav_bar.dart';
import 'package:maher_law/features/home/presentation/widgets/home_welcome_section.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverDesktopNavBar(),
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
