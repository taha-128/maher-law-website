import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maher_law/core/theme/app_colors.dart';
import 'package:maher_law/core/theme/app_styles.dart';
import 'package:maher_law/core/widget/hover_button.dart';
import 'package:maher_law/features/home/data/models/service_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({super.key, required this.service});
  final ServiceModel service;

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return HoverButton(
      onHoverStart: () {
        isActive = true;
        setState(() {});
      },
      onHoverEnd: () {
        isActive = false;
        setState(() {});
      },
      endScale: 1.01,
      child: Container(
        padding: EdgeInsets.only(right: 10, left: 10, top: 4.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? AppColors.green : Colors.black12,
            width: isActive ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.green,
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
              ),
              child: SvgPicture.asset(
                widget.service.icon,
                width: 35,
              ),
            ),
            SizedBox(height: 14),
            Text(
              widget.service.title,
              style: AppStyles.style18bold(context).copyWith(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 6),
            Text(
              widget.service.dsecription,
              style: AppStyles.style16bold(context).copyWith(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
