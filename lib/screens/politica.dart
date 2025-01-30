import 'package:flutter/material.dart';

class Politica extends StatelessWidget {
  const Politica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Politica de Privacidade'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Text(
                  " Bem-vindo ao Hive Hub, um aplicativo desenvolvido para organizar e exibir projetos integradores do IFPA Campus Tucuruí. Esta Política de Privacidade explica como coletamos, usamos e protegemos suas informações. Ao usar nosso aplicativo, você concorda com os termos aqui descritos. Coletamos nome de usuário e e-mail para identificação e autenticação. Também armazenamos informações dos projetos, incluindo nome dos autores, descrição e imagens. Esses dados são usados para gerenciar usuários, exibir projetos ao público e melhorar a plataforma. O Hive Hub não compartilha informações pessoais com terceiros. Os usuários podem editar nome de usuário e e-mail, além de modificar ou excluir projetos cadastrados. Os dados são armazenados com segurança no Supabase. Reservamo-nos o direito de alterar esta política, notificando mudanças importantes via aplicativo ou e-mail. Para dúvidas, entre em contato: suporte@hivehub.com. Agradecemos por confiar no Hive Hub!",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}