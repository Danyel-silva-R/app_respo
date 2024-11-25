
// import 'package:app_repositorio/screens/home_page.dart';
import 'package:app_repositorio/screens/splash_pae.dart';
import 'package:flutter/material.dart';

// import 'screens/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(244, 17, 13, 245),
      ),
      home: const SplashPae()
    );
  }
}