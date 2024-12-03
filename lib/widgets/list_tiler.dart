import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTill extends StatefulWidget {
  const ListTill({super.key, required this.text, this.onta, required this.icon});
  final String text;
  final Function()? onta;
  final IconData icon;

  @override
  State<ListTill> createState() => _ListTillState();
}

class _ListTillState extends State<ListTill> {

    
  @override
  Widget build(BuildContext context) {
    return ListTile(
          
      title: Text(
        widget.text,
        style: GoogleFonts.getFont(
          'Poppins',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      leading: Icon(
        widget.icon,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      onTap:widget.onta,
    );
  }
}
