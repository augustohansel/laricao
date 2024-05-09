import 'package:flutter/material.dart';
import 'sign_up_page.dart'; // Importe a página sign_up_page

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Stack(
        children: [
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
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80.0),
              ),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Entre',
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 80.0),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Container(
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.centerLeft,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          hintStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Container(
                            padding: EdgeInsets.all(10.0),
                            alignment: Alignment.centerLeft,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Senha',
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Material(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      elevation: 3.0,
                      color: Color(0xFF1E1E1E),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 138.0),
                        child: Text(
                          'CONECTAR',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo_login.png',
                width: MediaQuery.of(context).size.width * 0.6,
              ),
            ),
          ),
          Positioned(
            bottom: 40.0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                // Redirecionar para a página de cadastro (SignUpPage) quando o texto for clicado
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Center(
                child: Text(
                  'Não tem uma conta? Crie agora!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF646464),
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
