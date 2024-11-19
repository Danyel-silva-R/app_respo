import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';



final String assetName = 'assets/images/sea.svg';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

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
          Text(' Hiver Hub:Space Station',
          textAlign:TextAlign.center,
          style:
           GoogleFonts.getFont('Poppins',
             fontWeight:FontWeight.bold ,
            fontSize: 40,
            color: Color.fromARGB(255, 17, 4, 113),
          ) 

         ),
           SvgPicture.asset(
          assetName , 
          width: 500,
          height: 500,
        ), 
          
         ],
        ),
      ),
    );
  }
}
