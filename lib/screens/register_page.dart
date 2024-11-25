import 'package:app_repositorio/widgets/btn.dart';
import 'package:app_repositorio/widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final String assetName = 'assets/images/sea.svg';
  
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key,required this.onta});
  final Function()? onta;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passworcomfirController = TextEditingController();



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
              'Repositorio de projetos do IFPA',
              style: GoogleFonts.getFont(
                'Poppins',
                fontSize: 22,
              ),
            ),
          ),

            // campos de entradas Email
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
          MyTextfield(
              controller: emailController,
              obscureText: false,
              hinText: 'email'),

               // campo de Entrada senha
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
          MyTextfield(
              controller: passworcomfirController,
              obscureText: true,
              hinText: 'Senha'),

                 // campos de entradas comfirmasenha 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Confirma Senha',
                  style: GoogleFonts.getFont('Poppins',
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          MyTextfield(
              controller: passwordController,
              obscureText: true,
              hinText: 'Comfirma Senha'),
          //butao de entraar
          Btn(text: 'Criar Conta'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Voce ja tem uma conta?   ',
               style:GoogleFonts.getFont('Poppins',
                fontSize: 18,),),
              GestureDetector(
                onTap: widget.onta,
                child: Text('Entra ',
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
