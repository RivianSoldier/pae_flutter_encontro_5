import 'dart:convert';
import 'package:encontro_5/pages/second_page.dart';
import 'package:encontro_5/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Navegação + Pacotes + API')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
                text: "Buscar pokemon aleatório",
                funcao: () async {
                  var random = Random();
                  var url = Uri.parse(
                      'https://pokeapi.co/api/v2/pokemon/${random.nextInt(100)}');
                  var response = await http.get(url);
                  var nome = const JsonDecoder().convert(response.body)['name'];
                  var tipo = const JsonDecoder().convert(response.body)['types']
                      [0]['type']['name'];
                  var link = 'https://pokeapi.co/api/v2/pokemon/${nome}';
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          nome: nome,
                          tipo: tipo,
                          link: link,
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
