import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_icons.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: SvgPicture.asset(AppIcons.whatsapp),
        ),
      ),
      body: HomeScreenBody(),
    );
  }
}
