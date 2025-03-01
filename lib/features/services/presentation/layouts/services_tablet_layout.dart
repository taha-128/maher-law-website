import 'package:flutter/material.dart';

import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';

class ServicesTabletLayout extends StatelessWidget {
  const ServicesTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverTabletNavBar(),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [],
          ),
        ),
      ],
    );
  }
}

