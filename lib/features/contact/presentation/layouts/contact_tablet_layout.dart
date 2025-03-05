import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/widget/footer/footer_widget.dart';
import '../../../../core/widget/google_maps_widget.dart';
import '../../../../core/widget/nav_bar/sliver_nav_bar.dart';
import '../../../../core/widget/refresh_indicator.dart';
import '../widgets/contact_form_section.dart';
import '../widgets/contact_upper_section.dart';

class ContactTabletLayout extends StatefulWidget {
  const ContactTabletLayout({super.key});

  @override
  State<ContactTabletLayout> createState() => _ContactTabletLayoutState();
}

class _ContactTabletLayoutState extends State<ContactTabletLayout> {
  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
       onRefresh: () async {
        setState(() {});
      },
      child: CustomScrollView(
        slivers: [
          SliverTabletNavBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
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
      ),
    );
  }
}
