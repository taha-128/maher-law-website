import 'package:flutter/material.dart';

import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';

class ServicesMobileLayout extends StatelessWidget {
  const ServicesMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverMobileNavBar(),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [],
          ),
        ),
      ],
    );
  }
}
