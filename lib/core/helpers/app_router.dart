import 'package:go_router/go_router.dart';
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
    initialLocation: services,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: services,
        builder: (context, state) => ServicesScreen(),
      ),
    ],
    errorBuilder: (context, state) => PageNotFoundScreen(),
  );
}
