import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color.fromRGBO(49, 109, 239, 1),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Text(
                'Acompanhe e Compartilhe.',
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
                // Image.asset('assets/images/img1.png'),
             
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Aplicativo desenvolvido pelo os alunos do IFPA para a exibiçao de projetos.',
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