import 'package:flutter/material.dart';

import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverNavBar(),
        SliverFillRemaining(
          child: SizedBox(
            child: Column(
              children: [],
            ),
          ),
        ),
      ],
    );
  }
}
