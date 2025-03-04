import 'package:go_router/go_router.dart';
import 'package:maher_law/features/about/presentation/about_screen.dart';
import 'package:maher_law/features/contact/presentation/contact_screen.dart';
import 'package:maher_law/features/error/page_not_found_screen.dart';
import 'package:maher_law/features/home/presentation/home_screen.dart';
import 'package:maher_law/features/services/presentation/services_screen.dart';

abstract class AppRouter {
  static const home = '/home';
  static const services = '/services';
  static const about = '/about';
  static const contact = '/contact';
  static const blogs = '/blogs';

  static final router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: about,
        builder: (context, state) => AboutScreen(),
      ),
      GoRoute(
        path: services,
        builder: (context, state) => ServicesScreen(),
      ),
      GoRoute(
        path: contact,
        builder: (context, state) => ContactScreen(),
      ),
    ],
    errorBuilder: (context, state) => PageNotFoundScreen(),
  );
}
