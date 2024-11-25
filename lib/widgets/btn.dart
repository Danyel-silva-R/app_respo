import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Btn extends  StatelessWidget{
  const Btn({super.key, required this.text, this.onta});
  final String text;
  final Function()? onta;


  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap:onta,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25  ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding:const EdgeInsets.all(10  ),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(13, 10, 210, 1),
          ),
          child: Center(
            child: Text(text, 
            style: GoogleFonts.getFont('Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:Color.fromARGB(255, 255, 255, 255)
            ),
            
            ),
          ),
        ),
      ),


    );
  }
  
}