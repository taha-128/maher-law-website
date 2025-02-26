import 'package:flutter/foundation.dart';

abstract class AppImages {
  static const _imagesDebugPath = kDebugMode ? 'images' : 'assets/images';

  static const navLogo = '$_imagesDebugPath/nav_image.webp';
  static const lawyer = '$_imagesDebugPath/lawyer.webp';
  static const roman = '$_imagesDebugPath/roman.jpg';

  static const hammerIcon = '$_imagesDebugPath/hammer.webp';
  static const mezanIcon = '$_imagesDebugPath/mezan.webp';
  static const handshakeIcon = '$_imagesDebugPath/handshake.webp';
  static const protectionIcon = '$_imagesDebugPath/protection.webp';
}
