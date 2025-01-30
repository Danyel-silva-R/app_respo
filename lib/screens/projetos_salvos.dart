
import 'package:flutter/material.dart';

class ProjetosSalvos extends StatefulWidget {
  const ProjetosSalvos({super.key, });

  @override
  State<ProjetosSalvos> createState() => _ProjetosSalvosState();


}

  
typedef Favoritos = ({
  String nome,
  String descricao,
  String imagem,
  int fav, // Novo campo para subtítulo
   // Novo campo para mais detalhes
});

class _ProjetosSalvosState extends State<ProjetosSalvos> {

final favoritos = <Favoritos>[
  (
    nome: 'Arduino',
    descricao: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis fermentum elit. Suspendisse eleifend auctor nisl, in blandit nulla porttitor non. Duis eget venenatis eros, ac mattis magna. Fusce tortor mauris, interdum vel rhoncus vitae, semper eleifend libero.',
    imagem: 'assets/images/01.jpg',
     fav: 00,
  ),
  (
    nome: 'Desenvolvimento Web',
    descricao: 'Descrição do projeto 02',
    imagem: 'assets/images/02.jpg',
    fav: 00,
  ),
  (
    nome: 'Empreendedorismo',
    descricao: 'Descrição do projeto 03',
    imagem: 'assets/images/03.jpg',
     fav: 00,
  ),
  (
    nome: 'Matemática',
    descricao: 'Descrição do projeto 04',
    imagem: 'assets/images/04.jpg',
    fav: 00,
  ),
  (
    nome: 'Visão Computacional',
    descricao: 'Descrição do projeto 05',
    imagem: 'assets/images/05.jpg',
    fav: 00,
  ),
  (
    nome: 'Gamificação',
    descricao: 'Descrição do projeto 06',
    imagem: 'assets/images/06.jpg',
    fav: 00,
  ),
  (
    nome: 'Arma de Anão Pistola',
    descricao: 'Descrição do projeto 07',
    imagem: 'assets/images/07.jpg',
   fav: 00, 
  ),
  (
    nome: 'Projeto 08',
    descricao: 'Descrição do projeto 08',
    imagem: 'assets/images/08.jpg',
   fav: 00,
  ),
];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text('data'),
  centerTitle: true,
),
    );
  }
}