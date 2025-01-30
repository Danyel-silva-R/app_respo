import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     color: Color.fromRGBO(49, 109, 239, 1),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Text(
                'Bem-vindo ao Hive Hub. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ],
          ),
          Column(
            children: [
                
                 
               SvgPicture.asset('assets/images/sea.svg',width: 200,),
             
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Explore projetos do IFPA Campus-Tucuruí de forma simples e interativa.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )
            ],
          ),
           SizedBox(height: 10,)
        ],
      )),
    );
  }
}
