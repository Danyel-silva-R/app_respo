import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_repositorio/auth/login_of_register.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPae extends StatelessWidget {
  const SplashPae({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: LottieBuilder.asset(
                'assets/images/Animation - 1732418314557.json'),
          )
        ],
      ),
      nextScreen:
      
       const LoginOfRegister(),
      splashIconSize: 300,
      backgroundColor: Color.fromRGBO(13, 10, 210, 1),
    );
  }
}
