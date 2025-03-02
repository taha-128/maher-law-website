import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:maher_law/core/helpers/app_router.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            GoRouter.of(context).go(AppRouter.home);
          },
          child: Text('Error 404'),
        ),
      ),
    );
  }
}
