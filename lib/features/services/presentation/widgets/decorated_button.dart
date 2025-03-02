import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../core/theme/app_colors.dart';

class DecoratedButton extends StatelessWidget {
  const DecoratedButton({
    super.key,
    required this.child,
    this.padding,
    this.reversed = false,
    this.onTap,
  });
  final GestureTapCallback? onTap;
  final Widget child;
  final EdgeInsets? padding;
  final bool reversed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.white,
      focusColor: Colors.white,
      highlightColor: Colors.white,
      hoverColor: Colors.white,
      onPressed: () {},
      child: ZoomTapAnimation(
        onTap: onTap,
        begin: .985,
        child: Container(
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withAlpha(60),
                spreadRadius: 1,
                blurRadius: 6,
                offset: Offset(0, 3),
              )
            ],
            gradient: LinearGradient(
              colors: [
                AppColors.orange,
                AppColors.green,
              ],
              begin: reversed ? Alignment.bottomLeft : Alignment.topRight,
              end: reversed ? Alignment.topRight : Alignment.bottomLeft,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
