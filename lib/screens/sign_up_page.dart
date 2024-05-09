import 'package:flutter/material.dart';
import 'sign_in_page.dart'; // Importe a página de SignInPage

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E), // Cor de fundo da página
      body: Stack(
        children: [
          // Container com a imagem de fundo repetida
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage('assets/images/background_login.png'),
                fit: BoxFit.none,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          // Container com a cor F9F9F9 sobreposto
          Positioned(
            left: 0,
            right: 0,
            bottom: 0, // Começa a partir da parte inferior da tela
            height: MediaQuery.of(context).size.height * 0.85, // Ajuste a altura conforme necessário
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 0), // Adiciona espaçamento interno para os campos
              decoration: BoxDecoration(
                color: Color(0xFFF9F9F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.0), // Define o canto superior esquerdo arredondado
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Campo de entrada para Nome
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nome',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Adiciona um espaçamento entre os campos
                  // Campo de entrada para Email
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Adiciona um espaçamento entre os campos
                  // Campo de entrada para Senha
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true, // Esconde o texto digitado
                    ),
                  ),
                  SizedBox(height: 30), // Adiciona um espaçamento entre os campos
                  // Campo de entrada para Confirme sua Senha
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Confirme sua Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      obscureText: true, // Esconde o texto digitado
                    ),
                  ),
                  SizedBox(height: 30), // Adiciona um espaçamento entre os campos
                  // Botão Cadastrar
                  Material(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    elevation: 3.0,
                    color: Color(0xFF1E1E1E),
                    child: InkWell(
                      onTap: () {
                        // Implemente a lógica para cadastro aqui
                      },
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(0.0),
                        topRight: Radius.circular(10.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 138.0),
                        child: Text(
                          'CADASTRO',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Texto "Cadastro" centralizado e em negrito
          Positioned(
            top: 45, // Ajuste a posição vertical conforme necessário
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Cadastro',
                style: TextStyle(
                  fontSize: 34, // Ajuste o tamanho da fonte conforme necessário
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Cor do texto
                ),
              ),
            ),
          ),
          // Texto para redirecionar para a página de SignIn
          Positioned(
            bottom: 40.0, // Define a posição vertical do texto
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              child: Center(
                child: Text(
                  'Voltar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF646464), // Cor do texto
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
