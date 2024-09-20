import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../configs/app_dimensions.dart';
import '../../../configs/app_typography.dart';
import '../../../responsive/responsive.dart';

class VisualView extends StatelessWidget {
  const VisualView({super.key});

  @override
  Widget build(BuildContext context) {
    // create our stylish text:
    Widget title = Responsive.isMobile(context)
        ? Text(
            'WELCOME TO THE\nIBRAHIM KHAN \nPORTFOLIO',
            style: AppText.h1b!.copyWith(
              fontSize: AppDimensions.normalize(14),
              height: 1,
              letterSpacing: -3,
            ),
          )
        : Text(
            'IBRAHIM KHAN \nPORTFOLIO',
            style: AppText.h1b!.copyWith(
              fontSize: AppDimensions.normalize(14),
              // height: 1,
              letterSpacing: -3,
            ),
          );

    // TextStyle(
    //   fontWeight: FontWeight.w900,
    //   fontSize: 4,
    //   color: Color(0xFF666870),
    //   height: 1.5,
    //   letterSpacing: 3,
    // ),
    // );

    // add a rainbow gradient:
    // I'm lazy so I'll just apply a ShimmerEffect, use a ValueAdapter to
    // pause it half way, and let it handle the details
    title = title.animate(adapter: ValueAdapter(0.5)).shimmer(
      colors: [
        const Color(0xFFFFFF00).withOpacity(.5),
        const Color(0xFF00FF00).withOpacity(.5),
        const Color(0xFF00FFFF).withOpacity(.5),
        const Color(0xFF0033FF).withOpacity(.5),
        const Color(0xFFFF00FF).withOpacity(.5),
        const Color(0xFFFF0000).withOpacity(.5),
        const Color(0xFFFFFF00).withOpacity(.5),
      ],
    );

    // sequence some visual effects
    title = title
        .animate(onPlay: (controller) => controller.repeat(reverse: true))
        .saturate(delay: 1.seconds, duration: 2.seconds)
        .then() // set baseline time to previous effect's end time
        .tint(color: const Color(0xFF80DDFF))
        .then()
        .blurXY(end: 24)
        .fadeOut();

    return Padding(padding: const EdgeInsets.all(24), child: title);
  }
}
