import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maher_law/core/theme/app_colors.dart';
import 'package:maher_law/core/theme/app_icons.dart';
import 'package:maher_law/core/widget/adaptive_layout.dart';

import '../layouts/home_desktop_layout.dart';
import '../layouts/home_mobile_layout.dart';
import '../layouts/home_tablet_layout.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: SvgPicture.asset(AppIcons.phone),
      ),
      body: AdaptiveLayout(
        mobileLayout: (context) => HomeMobileLayout(),
        tabletLayout: (context) => HomeTabletLayout(),
        desktopLayout: (context) => HomeDesktopLayout(),
      ),
    );
  }
}
