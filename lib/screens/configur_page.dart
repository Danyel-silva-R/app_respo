import 'package:app_repositorio/auth/auth_servico.dart';
import 'package:app_repositorio/screens/perguntas.dart';
import 'package:app_repositorio/screens/politica.dart';
import 'package:app_repositorio/widgets/theme/themer_menager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfigurPage extends StatefulWidget {
  const ConfigurPage({super.key});

  @override
  State<ConfigurPage> createState() => _ConfigurPageState();
}

// conectando com o auth
final authService = AuthServico();

class _ConfigurPageState extends State<ConfigurPage> {
  bool heart = false;

  @override
  Widget build(BuildContext context) {
    final currentEmail = authService.getCurrentUserEmail();

    return Scaffold(
      appBar: AppBar(
        title: Text('Configuraçoes'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Perfil',
                    style: Theme.of(context).textTheme.titleLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).colorScheme.primary),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_sharp,
                            size: 150,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Danyelsrf',
                              style: 
                              Theme.of(context).textTheme.titleMedium),
                              Text( currentEmail.toString(),
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Preferências',
                        style: Theme.of(context).textTheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text(
                        'Terma:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      IconButton(
                        splashColor: Colors.deepPurple,
                        onPressed: () {
                          Provider.of<ThemerMenager>(context, listen: false)
                              .toggleTheme();
                          setState(() => heart = !heart);
                        },
                        icon: Icon(heart
                            ? Icons.light_mode_rounded
                            : Icons.dark_mode_sharp),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> const Politica())),
                        child: Text(
                          'Política de Privacidade',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:  ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>  Perguntas())),
                        child: Text(
                          'Ajuda e Suporte',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
