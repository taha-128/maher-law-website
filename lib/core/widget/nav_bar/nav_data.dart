import 'package:maher_law/core/helpers/app_router.dart';

class NavData {
  final String title;
  final String route;

  NavData({required this.title, required this.route});
}

List<NavData> navData = [
  NavData(title: 'الرئيسية', route: AppRouter.home),
  NavData(title: 'المجالات القانونية', route: AppRouter.services),
  NavData(title: 'من نحن', route: AppRouter.about),
  NavData(title: 'المقالات', route: AppRouter.blogs),
  NavData(title: 'تواصل معنا', route: AppRouter.contact),
];
