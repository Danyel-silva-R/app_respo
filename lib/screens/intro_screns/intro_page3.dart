import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(49, 109, 239, 1),
      child:Center(
        child:Column(
        children: [
        Image.asset('assets/images/01.jpg')
      ],)),
    );
  }
}