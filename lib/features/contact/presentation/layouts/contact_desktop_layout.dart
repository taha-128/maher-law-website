import 'package:flutter/material.dart';
import 'package:maher_law/core/widget/footer/footer_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/widget/google_maps_widget.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../widgets/contact_form_section.dart';
import '../widgets/contact_upper_section.dart';

class ContactDesktopLayout extends StatelessWidget {
  const ContactDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverDesktopNavBar(),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                SizedBox(height: 6.h),
                ContactUpperSection(),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(child: ContactFormSection()),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: SizedBox(height: 60.h, child: GoogleMapWidget()),
                    ),
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
