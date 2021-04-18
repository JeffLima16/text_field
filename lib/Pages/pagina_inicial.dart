import 'package:flutter/material.dart';
import 'package:text_field/Pages/paginas_boas_vindas.dart';

class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  TextEditingController _textoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Olá, digite seu nome por favor!",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: _textoNome,
            decoration: new InputDecoration(
              hintText: "Nome",
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaBoasVindas(_textoNome.text),
                  ));
            },
            child: Text(
              "Enviar",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
