import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'custom_progress_bar_widget.dart';

class ProgressBarSection extends StatelessWidget {
  const ProgressBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomProgressBarWidget(
          text: 'السرية',
          colorTheme: ProgressBarColorTheme.orange,
        ),
        CustomProgressBarWidget(
          text: 'الثقة',
          colorTheme: ProgressBarColorTheme.purple,
        ),
        CustomProgressBarWidget(
          text: 'الشفافية',
          colorTheme: ProgressBarColorTheme.cyan,
        ),
      ],
    );
  }
}
