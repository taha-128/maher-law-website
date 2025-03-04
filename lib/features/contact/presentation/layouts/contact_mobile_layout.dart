import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/widget/footer/footer_widget.dart';
import '../../../../core/widget/google_maps_widget.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/contact_form_section.dart';
import '../widgets/contact_upper_section.dart';

class ContactMobileLayout extends StatelessWidget {
  const ContactMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverMobileNavBar(),
        SliverToBoxAdapter(child: SizedBox(height: 3.h)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: ContactMobileUpperSection(),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                SizedBox(height: 6.h),
                Column(
                  children: [
                    ContactFormSection(),
                    SizedBox(height: 6.h),
                    SizedBox(height: 60.h, child: GoogleMapWidget()),
                  ],
                ),
                SizedBox(height: 15.h),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: Footer()),
      ],
    );
  }
}
