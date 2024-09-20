// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:provider/provider.dart';
//
// import '../../../responsive/responsive.dart';
// import '../vm/animation_vm.dart';
// import 'background_text_animation.dart';
//
// class RocketAnimationScreen extends StatefulWidget {
//   const RocketAnimationScreen({super.key});
//
//   @override
//   State<RocketAnimationScreen> createState() => _RocketAnimationScreenState();
// }
//
// class _RocketAnimationScreenState extends State<RocketAnimationScreen>
//     with TickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((callback) {
//       final animationProvider =
//           Provider.of<MyAnimation>(context, listen: false);
//       animationProvider.init(this);
//
//     });
//   }
//   @override
//   void dispose() {
//     context.read<MyAnimation>().rocketController.dispose();
//     context.read<MyAnimation>().textController.dispose();
//     super.dispose();
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<MyAnimation>(
//       builder: (context, myAnimation, child) {
//         return Stack(
//           children: [
//             if (myAnimation.showBlast)
//               Lottie.asset(
//                 'assets/animation/firework.json',
//                 width: 200,
//                 height: 200,
//               ),
//             if (myAnimation.showText)
//               FadeTransition(
//                 opacity: myAnimation.textAnimation,
//                 child: SlideTransition(
//                   position: myAnimation.textAnimation.drive(Tween<Offset>(
//                     begin: const Offset(0, 1),
//                     end: const Offset(0, 0),
//                   )),
//                   child: Responsive.isDesktop(context)
//                       ? const VisualView()
//                       : const VisualView(),
//                 ),
//               ),
//           ],
//         );
//       },
//     );
//   }
// }
