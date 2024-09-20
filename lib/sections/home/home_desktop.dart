import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


import '../../animations/entrance_fader.dart';
import '../../configs/app_dimensions.dart';
import '../../configs/app_theme.dart';
import '../../configs/app_typography.dart';
import '../../configs/space.dart';
import '../../utils/utils.dart';
import '../../widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: size.width < 1200
                      ? size.height * 0.8
                      : size.height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(50),
              AppDimensions.normalize(70),
              0,
              0,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'WELCOME TO MY PORTFOLIO! ',
                        style: AppText.b1!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          StaticUtils.hi,
                          height: AppDimensions.normalize(12),
                        ),
                      ),
                    ],
                  ),

                  // Text(
                  //   "Muhammad",
                  //   style: AppText.h1!.copyWith(
                  //     fontFamily: 'Montserrat',
                  //     fontSize: AppDimensions.normalize(23),
                  //     fontWeight: FontWeight.w100,
                  //   ),
                  // ),
                  SizedBox(
                      height: 150,
                      width: 400,
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child:

                          // RocketAnimationScreen()

                        Text(
                          "Ibrahim Khan",
                          style: AppText.h1b!.copyWith(
                            fontSize: AppDimensions.normalize(25),
                            height: 1,
                          ),
                        ),
                      )),


                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: AppTheme.c!.primary!,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              ' Flutter Developer',
                              speed: const Duration(milliseconds: 50),
                              textStyle: AppText.b1,
                            ),
                            TyperAnimatedText(
                              ' UI/UX Enthusiast',
                              speed: const Duration(milliseconds: 50),
                              textStyle: AppText.b1,
                            ),
                            TyperAnimatedText(
                              ' A friend :)',
                              speed: const Duration(milliseconds: 50),
                              textStyle: AppText.b1,
                            ),
                          ],
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                  ),

                  const SocialLinks(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
