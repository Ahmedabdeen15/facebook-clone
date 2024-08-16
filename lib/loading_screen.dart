import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:facebook_clone_/profile.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loadingAnimation(),
    );
  }
}

Widget _loadingAnimation() {
  return AnimatedSplashScreen(
    splash: Center(
      child: Lottie.asset(
        "assets/loop-animation.json",
        width: 130,
        fit: BoxFit.fill,
      ),
    ),
    nextScreen: const Profile(),
  );
}
