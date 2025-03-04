import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maher_law/core/helpers/app_router.dart';
import 'package:maher_law/core/helpers/size_config.dart';
import 'package:maher_law/core/theme/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(const MaherApp());
  // runApp(
  //   DevicePreview(
  //     enabled: false,
  //     builder: (context) => const MaherApp(),
  //   ),
  // );
}

class MaherApp extends StatelessWidget {
  const MaherApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return ResponsiveSizer(
      maxMobileWidth: SizeConfig.mobile.toDouble(),
      maxTabletWidth: SizeConfig.tablet.toDouble(),
      builder: (p0, p1, p2) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: const Locale('ar'),
          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          title: 'Maher',
          theme: ThemeData(
            scrollbarTheme: ScrollbarThemeData(
              thumbColor: WidgetStateProperty.all(AppColors.green),
            ),
            useMaterial3: true,
            brightness: Brightness.light,
            scaffoldBackgroundColor: AppColors.white,
            fontFamily: 'Cairo',
          ),
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
