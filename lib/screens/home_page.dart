import 'package:app_repositorio/screens/projeto_pagens.dart';
import 'package:app_repositorio/utils.dart';
import 'package:app_repositorio/widgets/drew_main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/main_card.dart';
import '../widgets/main_card_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
typedef Projeto = ({
  String nome,
  String descricao,
  String imagem,
  String? subtitulo, // Novo campo para subtítulo
  String? detalhes,  // Novo campo para mais detalhes
});

class _HomePageState extends State<HomePage> {
  int selectedIndex = -1;
  bool light1 = true;
  int selectedSegment = 0;

 final projetos = <Projeto>[
  (
    nome: 'Arduino',
    descricao: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis fermentum elit. Suspendisse eleifend auctor nisl, in blandit nulla porttitor non. Duis eget venenatis eros, ac mattis magna. Fusce tortor mauris, interdum vel rhoncus vitae, semper eleifend libero.',
    imagem: 'assets/images/01.jpg',
    subtitulo: 'Projeto com Arduino',
    detalhes: 'Este projeto envolve o uso de placas Arduino para automação e controle de sistemas.'
  ),
  (
    nome: 'Desenvolvimento Web',
    descricao: 'Descrição do projeto 02',
    imagem: 'assets/images/02.jpg',
    subtitulo: 'Construção de Sites e Aplicações Web',
    detalhes: 'Focado na criação de sites dinâmicos e responsivos usando tecnologias como HTML, CSS, JavaScript e frameworks como React.'
  ),
  (
    nome: 'Empreendedorismo',
    descricao: 'Descrição do projeto 03',
    imagem: 'assets/images/03.jpg',
    subtitulo: 'Iniciativas Empresariais',
    detalhes: 'Projeto que visa fomentar o espírito empreendedor e a criação de startups inovadoras no setor de tecnologia.'
  ),
  (
    nome: 'Matemática',
    descricao: 'Descrição do projeto 04',
    imagem: 'assets/images/04.jpg',
    subtitulo: 'Aprofundamento em Cálculos e Teorias',
    detalhes: 'Exploração de conceitos matemáticos avançados para aplicação em áreas como física e engenharia.'
  ),
  (
    nome: 'Visão Computacional',
    descricao: 'Descrição do projeto 05',
    imagem: 'assets/images/05.jpg',
    subtitulo: 'Reconhecimento de Imagens e Análise de Dados',
    detalhes: 'Uso de algoritmos de visão computacional para interpretar imagens e vídeos, aplicando técnicas como aprendizado de máquina.'
  ),
  (
    nome: 'Gamificação',
    descricao: 'Descrição do projeto 06',
    imagem: 'assets/images/06.jpg',
    subtitulo: 'Incorporando Jogos para Engajamento',
    detalhes: 'Aplicação de mecânicas de jogos em ambientes não-jogos para melhorar o engajamento e a motivação.'
  ),
  (
    nome: 'Arma de Anão Pistola',
    descricao: 'Descrição do projeto 07',
    imagem: 'assets/images/07.jpg',
    subtitulo: 'Projeto de Design e Funcionalidade',
    detalhes: 'Desenvolvimento de um protótipo para uma arma funcional em um projeto de engenharia e design.'
  ),
  (
    nome: 'Projeto 08',
    descricao: 'Descrição do projeto 08',
    imagem: 'assets/images/08.jpg',
    subtitulo: 'Inovação em Tecnologia',
    detalhes: 'Exploração de novas tecnologias e suas aplicações no mundo atual, com foco em soluções práticas para o dia a dia.'
  ),
];

  final filtersName = <String>{
    'Tecnico',
    'Subsequente',
    'Graduaçao',
  };
  final filters = <String>{};

  @override
  Widget build(BuildContext context) {
    debugPrint('Tela Redesenhada...');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive'),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(projetos),
                );
              }),
          const SizedBox(width: 16)
        ],
      ),
      drawer: DrewMain(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Galeria de projetos do IFPA',
              style: GoogleFonts.getFont('Poppins',
              fontSize: 25,
              color:Color.fromRGBO(13, 10, 210, 1),
              ),
              ),
            ),
            CarouselSlider(
              items: projetos.take(5).map(ImageSlide.new).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction: 0.6,
                enlargeFactor: 0.2,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  // Optional callback when the page changes
                },
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: filtersName.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = filtersName.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FilterChip(
                      label: Text(item),
                      selected: filters.contains(item),
                      onSelected: (value) {
                        setState(() {
                          if (value) {
                            filters.add(item);
                          } else {
                            filters.remove(item);
                          }
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                SegmentedButton<int>(
                  showSelectedIcon: false,
                  segments: const [
                    ButtonSegment(
                        value: 0,
                        label: Text('Grade'),
                        icon: Icon(Icons.grid_view_rounded)),
                    ButtonSegment(
                        value: 1,
                        label: Text('Lista'),
                        icon: Icon(Icons.dns_rounded)),
                  ],
                  selected: {selectedSegment},
                  onSelectionChanged: (newSelection) {
                    setState(() {
                      selectedSegment = newSelection.first;
                    });
                  },
                ),
              ],
            ),
            ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 900,
                  ),
                  child: Wrap(
                    children: [
                      ...projetos.map((projeto) {
                        return selectedSegment == 0
                            ? GestureDetector(
                                onTap: () {
                                  // Navegar para a página de detalhes do projeto
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProjetoDetalhesPage(projeto: projeto),
                                    ),
                                  );
                                },
                                child: MainCard(
                                  name: projeto.nome,
                                  description: projeto.descricao,
                                  image: projeto.imagem,
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  // Navegar para a página de detalhes do projeto
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProjetoDetalhesPage(projeto: projeto),
                                    ),
                                  );
                                },
                                child: MainCardList(
                                  name: projeto.nome,
                                  description: projeto.descricao,
                                  image: projeto.imagem,
                                ),
                              );
                      }),
                    ],
                  ),
                ),


          ],
        ),
      ),
    );
  }

  void onItemTapped(int index) => setState(() {
        selectedIndex = index;
      });
}

class ImageSlide extends StatelessWidget {
  const ImageSlide(this.projeto, {super.key});

  final Projeto projeto;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Image.asset(
          height: 200,
          projeto.imagem,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 2,
          child: Text(
            projeto.nome.corte(15),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  blurRadius: 2,
                  color: Colors.black54,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  final List<Projeto> projetos;

  MySearchDelegate(this.projetos);

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        if (query.isEmpty) {
          close(context, null);
        } else {
          query = '';
        }
      },
    ),
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, null),
  );

  @override
  Widget buildResults(BuildContext context) {
    // Filtra os projetos com base na pesquisa do usuário
    final List<Projeto> filteredProjects = projetos
        .where((projeto) => projeto.nome.toLowerCase().contains(query.toLowerCase()))
        .toList();

    // Caso nenhum projeto seja encontrado
    if (filteredProjects.isEmpty) {
      return Center(
        child: Text(
          'Nenhum projeto encontrado',
          style: GoogleFonts.getFont('Poppins'),
        ),
      );
    }

    // Exibe os projetos filtrados
    return ListView.builder(
      itemCount: filteredProjects.length,
      itemBuilder: (context, index) {
        final projeto = filteredProjects[index];

        return ListTile(
          title: Text(projeto.nome),
          onTap: () {
            // Navegar para a página de detalhes do projeto
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjetoDetalhesPage(projeto: projeto),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> allSuggestions = projetos.map((p) => p.nome).toList();

    // Filtro de sugestões baseado na query
    final List<String> filteredSuggestions = allSuggestions
        .where((suggestion) =>
            suggestion.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        final suggestion = filteredSuggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}