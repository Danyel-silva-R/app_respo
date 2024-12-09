import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(222, 39, 11, 1),
      child:Center(child: Column(children: [
        Image.asset('assets/images/01.jpg')
      ],)),
    );
  }
}