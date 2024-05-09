import 'package:flutter/material.dart';
import 'sign_in_page.dart'; // Importe a página sign_in_page

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome_page.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 16.0,
            bottom: 40.0,
            child: SizedBox(
              width: 200.0,
              child: FloatingActionButton(
                onPressed: () {
                  // Redirecionar para a página de login (SignInPage) quando o botão for pressionado
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                child: Text(
                  'MATE A SUA FOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                backgroundColor: Color(0xFF1F1F1F),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
