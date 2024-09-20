// import 'package:flutter/material.dart';
//
// class MyAnimation with ChangeNotifier {
//   late AnimationController rocketController;
//   late AnimationController textController;
//   late Animation<double> rocketAnimation;
//   late Animation<double> textAnimation;
//   bool showBlast = false;
//   bool showText = false;
//   bool isLoading = false;
//   init(TickerProvider vsync) {
//     rocketController = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: vsync,
//     );
//
//     textController = AnimationController(
//       duration: const Duration(seconds: 13),
//       vsync: vsync,
//     );
//
//     rocketAnimation = Tween<double>(begin: 0, end: 1).animate(rocketController);
//
//     textAnimation = CurvedAnimation(
//       parent: textController,
//       curve: Curves.easeInOut,
//     );
//     startAnimationLoop();
//   }
//
//   void startAnimationLoop() {
//     rocketController.forward().whenComplete(() {
//       showBlast = true;
//       notifyListeners();
//
//       textController.forward();
//
//       // Show text after the blast completes and turn off the blast effect
//       Future.delayed(const Duration(seconds: 8), () {
//         showText = true;
//         showBlast = false;
//         notifyListeners();
//
//         // Reset and start the loop again after 1 minute
//         Future.delayed(const Duration(minutes: 1), () {
//           showText = false;
//           rocketController.reset();
//           textController.reset();
//           startAnimationLoop();
//           notifyListeners();
//         }
//         );
//       });
//     });
//   }
// }
//
