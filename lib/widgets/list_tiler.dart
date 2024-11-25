import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTill extends StatelessWidget {
  const ListTill({super.key, required this.text, this.onta, required this.icon});
  final String text;
  final Function()? onta;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text(
        text,
        style: GoogleFonts.getFont(
          'Poppins',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      leading: Icon(
        icon,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      onTap:onta,
    );
  }
}
