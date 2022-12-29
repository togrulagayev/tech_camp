import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';

import '../login_page/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuperSplash(),
    );
  }
}

class SuperSplash extends StatelessWidget {
  const SuperSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const LoginScreen(),
      duration: 1500,
      backgroundColor: Colors.black,
      splashIconSize: 150.0,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      splash: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)),
            child: Image.asset(
              'assets/images/sps.png',
              width: 300,
              height: 150,
            ),
          )
        ],
      ),
    );
  }
}
