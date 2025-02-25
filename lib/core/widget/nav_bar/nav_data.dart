import 'package:maher_law/core/helpers/app_router.dart';

class NavData {
  final String title;
  final String route;

  NavData({required this.title, required this.route});
}

List<NavData> navData = [
  NavData(title: 'الرئيسية', route: AppRouter.home),
  NavData(title: 'المجالات القانونية', route: '/page'),
  NavData(title: 'من نحن', route: '/page'),
  NavData(title: 'المقالات', route: '/page'),
  NavData(title: 'تواصل معنا', route: '/page'),
];
