import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import '../../../data/models/rate_model.dart';

class RateItem extends StatelessWidget {
  const RateItem({super.key, required this.rate});
  final RateModel rate;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.h,
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                width: 40.w,
                height: 25.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.orange,
                      AppColors.green,
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 24),
                    Text(
                      rate.description,
                      style: AppStyles.style16medium(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      rate.name,
                      style: AppStyles.style18bold(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10, color: Colors.grey.shade50),
                ),
                child: Image.asset(
                  rate.image,
                  width: 5.5.w,
                  height: 5.5.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
