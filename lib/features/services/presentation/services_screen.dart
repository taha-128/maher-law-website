import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/adaptive_layout.dart';

import 'layouts/services_desktop_layout.dart';
import 'layouts/services_mobile_layout.dart';
import 'layouts/services_tablet_layout.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (_) => ServicesDesktopLayout(),
        tabletLayout: (_) => ServicesTabletLayout(),
        mobileLayout: (_) => ServicesMobileLayout(),
      ),
    );
  }
}
