import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maher_law/core/theme/app_colors.dart';

import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: AppColors.green,
        child: Icon(
          CupertinoIcons.phone,
          size: 25,
          color: Colors.white,
        ),
      ),
      body: HomeScreenBody(),
    );
  }
}
