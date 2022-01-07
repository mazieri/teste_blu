import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'pages.dart';

import 'package:flutter_svg/svg.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: const Duration(seconds: 2),
      splash: SvgPicture.asset("assets/logo_splash.svg"),
      backgroundColor: const Color(0xFFf9fbfc),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.fade,
      curve: Curves.easeInOut,
      nextScreen: const HomePage(),
    );
  }
}
