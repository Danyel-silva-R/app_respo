

import 'package:app_repositorio/screens/splash_pae.dart';
import 'package:app_repositorio/widgets/theme/themer_menager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemerMenager>(context).themeData,
      home: SplashPae()
    );
  }
}