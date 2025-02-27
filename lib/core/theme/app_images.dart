import 'package:flutter/foundation.dart';

abstract class AppImages {
  static const _imagesDebugPath = kDebugMode ? 'images' : 'assets/images';

  static const navLogo = '$_imagesDebugPath/nav_image.webp';
  static const lawyer = '$_imagesDebugPath/lawyer.webp';
  static const court = '$_imagesDebugPath/court.jpg';
  static const roman = '$_imagesDebugPath/roman.jpg';
  static const balance = '$_imagesDebugPath/balance.webp';
}
