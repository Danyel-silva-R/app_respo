import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
                'Pronto para começar? ',
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
                  'Acesse agora e descubra o melhor dos projetos e atividades do IFPA Tucuruí!',
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