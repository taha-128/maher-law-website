import 'package:flutter/material.dart';
import 'package:maher_law/core/helpers/app_router.dart';
import 'package:maher_law/core/helpers/extensions/app_named_navigator.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushReplacementNamed(AppRouter.home);
          },
          child: Text('Error 404'),
        ),
      ),
    );
  }
}
