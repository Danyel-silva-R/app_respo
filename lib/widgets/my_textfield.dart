import 'package:flutter/material.dart';


class MyTextfield extends   StatelessWidget {
 final TextEditingController controller;
 final bool obscureText;
 final String hinText;


  const MyTextfield({super.key, required this.controller, required this.obscureText, required this.hinText});
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller:controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 77, 9, 146)
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:BorderSide(
              color:Color.fromARGB(255, 77, 9, 146)
            ) 
          ),
          //  hintText:hinText 
        ),
      
      )
    );
  }
 
  
}