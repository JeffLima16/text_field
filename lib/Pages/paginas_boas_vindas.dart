import 'package:flutter/material.dart';

class PaginaBoasVindas extends StatelessWidget {
  String _nome;

  PaginaBoasVindas(this._nome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Olá $_nome, Seja bem-vindo!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white30),
              onPressed: () => {Navigator.pop(context)},
              child: Text(
                'Voltar',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
