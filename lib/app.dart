
import 'package:flutter/material.dart';

// import 'screens/home_page.dart';
import 'screens/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}