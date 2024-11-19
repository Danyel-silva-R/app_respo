import 'package:app_repositorio/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
});

class _HomePageState extends State<HomePage> {
  int selectedIndex = -1;
  bool light1 = true;
  int selectedSegment = 0;

  final projetos = <Projeto>[
    (
      nome: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      descricao:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis fermentum elit. Suspendisse eleifend auctor nisl, in blandit nulla porttitor non. Duis eget venenatis eros, ac mattis magna. Fusce tortor mauris, interdum vel rhoncus vitae, semper eleifend libero. Cras sapien est, gravida ac elit nec, egestas commodo enim.',
      imagem: 'assets/images/01.jpg'
    ),
    (
      nome: 'Projeto 02',
      descricao: 'Descrição do projeto 02',
      imagem: 'assets/images/02.jpg'
    ),
    (
      nome: 'Projeto 03',
      descricao: 'Descrição do projeto 03',
      imagem: 'assets/images/03.jpg'
    ),
    (
      nome: 'Projeto 04',
      descricao: 'Descrição do projeto 04',
      imagem: 'assets/images/04.jpg'
    ),
    (
      nome: 'Projeto 05',
      descricao: 'Descrição do projeto 05',
      imagem: 'assets/images/05.jpg'
    ),
    (
      nome: 'Projeto 06',
      descricao: 'Descrição do projeto 06',
      imagem: 'assets/images/06.jpg'
    ),
    (
      nome: 'Projeto 07',
      descricao: 'Descrição do projeto 07',
      imagem: 'assets/images/07.jpg'
    ),
    (
      nome: 'Projeto 08',
      descricao: 'Descrição do projeto 08',
      imagem: 'assets/images/08.jpg'
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
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const SizedBox(width: 16)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 42,
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 64,
                    ),
                  ),
                  Text(
                    'Deriks Karlay',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: selectedIndex == 0,
              selectedTileColor: const Color.fromARGB(255, 80, 83, 86),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Projetos'),
              selected: selectedIndex == 1,
              selectedTileColor:const Color.fromARGB(255, 80, 83, 86),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuraçao'),
              selected: selectedIndex == 2,
              selectedTileColor:const Color.fromARGB(255, 80, 83, 86),
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        ? MainCard(
                            name: projeto.nome,
                            description: projeto.descricao,
                            image: projeto.imagem,
                          )
                        : MainCardList(
                            name: projeto.nome,
                            description: projeto.descricao,
                            image: projeto.imagem,
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
