import 'package:app_repositorio/auth/auth_servico.dart';
import 'package:app_repositorio/screens/configur_page.dart';
import 'package:app_repositorio/screens/projetos_salvos.dart';
import 'package:app_repositorio/widgets/list_tiler.dart';
import 'package:flutter/material.dart';

class DrewMain extends StatefulWidget {
  const DrewMain({super.key});

  @override
  State<DrewMain> createState() => _DrewMainState();
}

class _DrewMainState extends State<DrewMain> {
  final authService = AuthServico();

  void logunt() async {
    await authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:Theme.of(context).primaryColor,
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
          ListTill(text: 'PROJETOS SALVOS', onta: () {
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>ProjetosSalvos()));
          }, icon: Icons.bookmark),
          ListTill(text: 'SOBRE ', onta: () {}, icon: Icons.info),
          const Spacer(),
          const Spacer(),
          ListTill(text: 'SAIR', onta: logunt, icon: Icons.logout),
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
