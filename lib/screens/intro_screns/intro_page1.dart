import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color.fromRGBO(49, 109, 239, 1),
      child:Center(child:
       Column(
       mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Container(
          padding: EdgeInsets.all(10),
           color: Colors.white,
          height: 300,
          child: Column(
            children: [
              Image.asset('assets/images/mao.png',),
              Text('Seja Bem vindo ao ',
                    style: TextStyle(
                      fontSize:20 ,
                       fontWeight: FontWeight.bold,
                      color:const Color.fromARGB(255, 0, 0, 0)
                    ),),
              Text('Hive Hub:Space Station',
                    style: TextStyle(
                      fontSize:20 ,
                       fontWeight: FontWeight.bold,
                      color:const Color.fromARGB(255, 0, 0, 0)
                    ),)

            ],
          ),
        ),
        SizedBox(height: 175,)
      ],)),
    );
  }
}