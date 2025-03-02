import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:maher_law/core/helpers/app_router.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_styles.dart';
import 'package:maher_law/core/widget/adaptive_layout.dart';
import 'package:maher_law/features/services/presentation/widgets/decorated_button.dart';
import 'package:maher_law/features/services/presentation/widgets/services_blog_content.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../cubit/selected_blog_cubit.dart';
import 'services_blogs_list.dart';
import 'services_blogs_menu.dart';

class ServicesBlogsSection extends StatelessWidget {
  const ServicesBlogsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectedBlogCubit(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        width: SizeConfig.width,
        child: Column(
          children: [
            AdaptiveLayout(
              mobileLayout: (_) => ServicesMobileBlog(),
              tabletLayout: (_) => ServicesMobileBlog(),
              desktopLayout: (_) => ServicesDesktopBlog(),
            ),
            SizedBox(height: 3.h),
            DecoratedButton(
              onTap: () {
                GoRouter.of(context).go(AppRouter.blogs);
              },
              child: Text(
                'تعمق أكثر من خلال مدونتنا',
                style: AppStyles.style16bold(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServicesMobileBlog extends StatelessWidget {
  const ServicesMobileBlog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ServicesBlogsMenu(),
        SizedBox(height: 2.h),
        ServicesBlogContent()
      ],
    );
  }
}

class ServicesDesktopBlog extends StatelessWidget {
  const ServicesDesktopBlog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: ServicesBlogsList()),
        SizedBox(width: 4.w),
        Expanded(flex: 2, child: ServicesBlogContent()),
      ],
    );
  }
}
