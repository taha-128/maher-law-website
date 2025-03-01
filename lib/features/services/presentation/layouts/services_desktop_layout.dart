// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_images.dart';
import 'package:maher_law/core/widget/footer/footer_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_styles.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/decorated_button.dart';
import '../widgets/learn_more_button.dart';
import '../widgets/services_header_section.dart';
import '../widgets/services_image_widget.dart';
import '../widgets/sliver_service_grid.dart';

class ServicesDesktopLayout extends StatelessWidget {
  const ServicesDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverDesktopNavBar(),
        SliverToBoxAdapter(child: ServicesHeaderSection()),
        SliverServicesGrid(),
        SliverList(
          delegate: SliverChildListDelegate.fixed(
            [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [LearnMoreButton()],
                ),
              ),
              SizedBox(height: 4.h),
              ServicesImageWidget(),
              SizedBox(height: 6.h),
              Footer(),
            ],
          ),
        ),
      ],
    );
  }
}
