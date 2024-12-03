import 'package:app_repositorio/screens/configur_page.dart';
import 'package:app_repositorio/widgets/list_tiler.dart';
import 'package:flutter/material.dart';

class DrewMain extends StatelessWidget {
  const DrewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(244, 17, 13, 245),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.rocket_launch,
              size: 90,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          ListTill(
              text: 'INICIO',
              onta: () {
                Navigator.pop(
                  context,
                );
              },
              icon: Icons.home),
          ListTill(
              text: 'CONFIGURAÇOES',
              onta: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConfigurPage()));
              },
              icon: Icons.settings),
          ListTill(text: 'PROJETOS SALVOS', onta: () {}, icon: Icons.bookmark),
          ListTill(text: 'INFOMAÇOES', onta: () {}, icon: Icons.info),
          const Spacer(),
          const Spacer(),
          ListTill(text: 'SAIR', onta: () {}, icon: Icons.logout),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Versao:0.0.1',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          )
        ],
      ),
    );
  }
}
