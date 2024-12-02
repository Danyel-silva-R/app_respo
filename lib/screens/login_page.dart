import 'package:app_repositorio/screens/home_page.dart';
import 'package:app_repositorio/widgets/btn.dart';
import 'package:app_repositorio/widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final String assetName = 'assets/images/sea.svg';

class LoginPage extends StatefulWidget {

  final Function()? onta;
  const LoginPage({super.key,required this.onta});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

void singIn(){
  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
}

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.rocket_launch,
              size: 90,
              color: Color.fromARGB(244, 17, 13, 245),
            ),
          ),
          Text(' Hiver Hub: ',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color.fromARGB(255, 17, 4, 113),
              )),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ola Bem-Vindo de Volta',
              style: GoogleFonts.getFont(
                'Poppins',
                fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.getFont('Poppins',
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // campos de entradas
          MyTextfield(
              controller: emailController,
              obscureText: false,
              hinText: 'email'),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Senha',
                  style: GoogleFonts.getFont('Poppins',
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // campo de senha
          MyTextfield(
              controller: passwordController,
              obscureText: true,
              hinText: 'senha'),


          //butao de entraar
          Btn(onta: singIn,
            text: 'Entra'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Voce nao tem uma conta?   ',
               style:GoogleFonts.getFont('Poppins',
                fontSize: 18,),),
              GestureDetector(
                onTap: widget.onta,
                child: Text('clique aqui ',
                style:GoogleFonts.getFont('Poppins',
                fontSize: 18,
                color:Color.fromRGBO(13, 10, 210, 1),

                ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
