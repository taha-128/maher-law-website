import 'package:flutter/foundation.dart';

abstract class AppIcons {
  static const _iconsPath = kDebugMode ? 'svgs' : 'assets/svgs';

  static const hammer = '$_iconsPath/hammer.svg';
  static const shield = '$_iconsPath/shield.svg';
  static const handshake = '$_iconsPath/handshake.svg';
  static const balance = '$_iconsPath/balance.svg';

  static const menu = '$_iconsPath/menu.svg';
  static const phone = '$_iconsPath/phone.svg';
  static const whatsapp = '$_iconsPath/whatsapp.svg';
}
