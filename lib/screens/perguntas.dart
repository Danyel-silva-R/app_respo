import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Perguntas extends StatelessWidget {
  final List<Map<String, String>> pergunta = [
    {
      "pergunta": "Como faço para cadastrar um projeto?",
      "resposta": "No menu principal, clique em 'Adicionar Projeto' e preencha as informações necessárias."
    },
    {
      "pergunta": "Posso editar meu nome de usuário?",
      "resposta": "Sim, acesse as configurações do seu perfil e altere seu nome de usuário."
    },
    {
      "pergunta": "Como excluir um projeto?",
      "resposta": "Na tela de detalhes do projeto, clique no ícone de lixeira para removê-lo."
    },
    {
      "pergunta": "Meus dados estão seguros?",
      "resposta": "Sim, utilizamos o Supabase para armazenar os dados de forma segura e protegida."
    },
  ];

  Perguntas({super.key});

  _enviarEmail(BuildContext context) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'dsilvarodrigues48@gmail.com',
      queryParameters: {'subject': 'Suporte Hive Hub'},
    );

    try {
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        _showErrorMessage(context, "Não foi possível abrir o aplicativo de e-mail.");
      }
    } catch (e) {
      _showErrorMessage(context, "Erro ao tentar abrir o e-mail: $e");
    }
  }

  void _showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perguntas e Ajuda"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              // Adicionar ação para ajuda adicional, se necessário
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: pergunta.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ExpansionTile(
                      title: Text(
                        pergunta[index]["pergunta"]!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            pergunta[index]["resposta"]!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => _enviarEmail(context),
              icon: Icon(Icons.email),
              label: Text("Entrar em contato"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
