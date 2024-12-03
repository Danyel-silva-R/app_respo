import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfigurPage extends StatefulWidget {
  const ConfigurPage({super.key});

  @override
  State<ConfigurPage> createState() => _ConfigurPageState();
}

class _ConfigurPageState extends State<ConfigurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuraçoes'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft:Radius.zero),
                color: Color.fromARGB(255, 13, 25, 195)
              ),
              child: Column(
                children: [
                  IconButton(onPressed:(){

                  } , icon: Icon(Icons.person)),
                  Icon(
                    Icons.account_circle_sharp,
                    size: 150,
                    color:const Color.fromARGB(255, 255, 255, 255),
                  ),
                   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Danyel da Silva Rodrigues ',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.getFont('Poppins',
                  fontSize: 25,
                  color: Color.fromARGB(225, 225, 225, 225))),
               
              ],
            )
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
