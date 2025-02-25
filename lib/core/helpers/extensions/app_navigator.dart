// import 'package:flutter/widgets.dart';

// enum NavigationDirection { rightToLeft, leftToRight, upToDown, downToUp }

// extension AppNavigator on BuildContext {
//   void pop() => Navigator.pop(this);

//   void canPop() => Navigator.canPop(this);

//   void push(Widget screen, {NavigationDirection? direction}) {
//     Navigator.push(
//       this,
//       MyCustomRoute(
//         screen: screen,
//         direction: direction ?? NavigationDirection.rightToLeft,
//       ),
//     );
//   }

//   void pushReplacement(Widget screen, {NavigationDirection? direction}) {
//     Navigator.pushReplacement(
//       this,
//       MyCustomRoute(
//         screen: screen,
//         direction: direction ?? NavigationDirection.rightToLeft,
//       ),
//     );
//   }

//   void pushAndRemoveUntil(Widget screen, {NavigationDirection? direction}) {
//     Navigator.pushAndRemoveUntil(
//       this,
//       MyCustomRoute(
//         screen: screen,
//         direction: direction ?? NavigationDirection.rightToLeft,
//       ),
//       (route) => false,
//     );
//   }
// }

// class MyCustomRoute extends PageRouteBuilder {
//   final Widget screen;
//   final NavigationDirection direction;
//   MyCustomRoute({required this.screen, required this.direction})
//       : super(
//           pageBuilder: (context, animation, secondaryAnimation) => screen,
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             var begin = const Offset(1, 0);
//             //TODO:  جرب تخلي النافيجيشن بتاع لما تخش على سكرين السلة يكون البيجان بتاعه اوفوسيت س تساوي 1 وصاد تساوي -1 مع تغيرالكيرف
//             if (direction == NavigationDirection.upToDown) {
//               begin = const Offset(0, -1);
//             } else if (direction == NavigationDirection.downToUp) {
//               begin = const Offset(0, 1);
//             } else if (direction == NavigationDirection.leftToRight) {
//               begin = const Offset(-1, 0);
//             }
//             const end = Offset.zero;
//             const curve = Curves.easeInOut;

//             var tween =
//                 Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//             var offsetAnimation = animation.drive(tween);

//             return SlideTransition(
//               position: offsetAnimation,
//               child: child,
//             );
//           },
//         );
// }
