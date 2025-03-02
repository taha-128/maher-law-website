import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:maher_law/core/helpers/app_router.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_icons.dart';
import 'package:maher_law/core/theme/app_styles.dart';
import 'package:maher_law/features/services/presentation/widgets/decorated_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (SizeConfig.isDesktop)
                  Lottie.asset(AppIcons.error404, width: 45.w),
                if (!SizeConfig.isDesktop)
                  Transform.scale(
                    scale: 1.4,
                    child: Lottie.asset(AppIcons.error404),
                  ),
                SizedBox(height: 3.h),
                Text(
                  'عذرًا هذه الصفحة غير موجودة، نرجو منك التوجه للصفحة الرئيسية',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: AppStyles.style18bold(context),
                ),
                SizedBox(height: 5.h),
                DecoratedButton(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8),
                  onTap: () {
                    GoRouter.of(context).go(AppRouter.home);
                  },
                  child: Text(
                    'الرجوع للصفحة الرئيسية',
                    style: AppStyles.style18bold(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
