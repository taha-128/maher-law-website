import 'package:flutter/foundation.dart';

abstract class AppIcons {
  static const _iconsPath = kDebugMode ? 'svgs' : 'assets/svgs';

  static const hammer = '$_iconsPath/hammer.svg';
  static const menu = '$_iconsPath/menu.svg';
  static const phone = '$_iconsPath/phone.svg';
  static const whatsapp = '$_iconsPath/whatsapp.svg';
}
