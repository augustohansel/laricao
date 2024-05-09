import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF9F9F9), // Cor de fundo da página
        child: Stack(
          children: [
            Positioned(
              top: 20.0, // Distância do topo
              left: 20.0, // Distância da esquerda
              child: Stack(
                children: [
                  Container(
                    width: 100.0, // Largura do círculo
                    height: 100.0, // Altura do círculo
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300], // Cor de fundo do círculo
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/icon_profile.png', // Caminho da imagem de perfil
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      width: 30, // Largura do botão
                      height: 30, // Altura do botão
                      child: FloatingActionButton(
                        onPressed: () {
                          // Ação ao clicar no botão
                        },
                        child: Icon(Icons.add),
                        backgroundColor: Color(0xFFFF7A55),
                        mini: true, // Botão mini
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 55.0, // Distância do topo
              left: 140.0, // Distância da esquerda (depois da imagem)
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Augusto Preuss Hansel',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 0.5), // Espaçamento entre os textos
                  Text(
                    'Santa Maria, RS - Brasil',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 160.0, // Distância do topo (abaixo dos textos e da foto)
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MATE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'SUA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'FOME',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'MATE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'SUA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'FOME',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'MATE',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                  Text(
                    'SUA',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: _randomColor(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              left: 20,
              right: 20,
              top: 200.0,
              bottom: 350.0,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF7678ED),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(0.0), // Cantos superiores não arredondados
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    // Conteúdo do container
                  ),
                  Align(
                    alignment: Alignment.centerLeft, // Alinhamento à esquerda
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0), // Espaçamento à esquerda
                      child: Image.asset(
                        'assets/images/logo_home_container.png',
                        height: 175,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 6.0, // Distância do lado direito
                    bottom: 0, // Alinhamento inferior
                    child: Image.asset(
                      'assets/images/raio_home.png',
                      height: 230,
                    ),
                  ),
                  Positioned(
                    right: 20.0, // Distância do lado direito
                    bottom: 20.0, // Distância da parte inferior
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Adicionando preenchimento interno
                      decoration: BoxDecoration(
                        color: Color(0xFFFF7A55), // Cor de fundo do botão
                        borderRadius: BorderRadius.circular(30.0), // Bordas arredondadas
                      ),
                      child: Text(
                        'ENCONTRAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _randomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256), // R: Entre 0 e 255
      random.nextInt(256), // G: Entre 0 e 255
      random.nextInt(256), // B: Entre 0 e 255
    );
  }
}

