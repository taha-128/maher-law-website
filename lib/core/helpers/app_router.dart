import 'package:go_router/go_router.dart';
import 'package:maher_law/features/error/presentation/page_not_found_screen.dart';
import 'package:maher_law/features/home/presentation/home_screen.dart';

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
    ],
    errorBuilder: (context, state) => PageNotFoundScreen(),
  );
}
