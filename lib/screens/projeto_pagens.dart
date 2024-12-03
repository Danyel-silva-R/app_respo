import 'package:app_repositorio/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProjetoDetalhesPage extends StatelessWidget {
  final Projeto projeto;

  const ProjetoDetalhesPage({super.key, required this.projeto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projeto.nome),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carrossel de imagens
            CarouselSlider(
              options: CarouselOptions(
                height: 300, 
                autoPlay: true, 
                enlargeCenterPage: true,
                enableInfiniteScroll: true, 
                viewportFraction: 1.0, // 
              ),
              items: _getImagesForProjeto().map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text(
              projeto.nome,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              projeto.descricao,
              style: TextStyle(fontSize: 16),
            ),
            Text('Integrantes do projetor',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  
  List<String> _getImagesForProjeto() {
    
    return [
      'assets/images/01.jpg',
      'assets/images/02.jpg',
      'assets/images/03.jpg',
      
    ];
  }
}
