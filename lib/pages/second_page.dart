import 'package:encontro_5/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String nome;
  final String tipo;
  final String link;
  const SecondPage(
      {super.key, required this.nome, required this.tipo, required this.link});

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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(48, 0, 48, 8),
                    child: Text('Nome: $nome',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(48, 0, 48, 8),
                    child: Text('Tipo: $tipo',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(48, 0, 48, 64),
                    child: Text('Url: $link',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              ButtonWidget(
                text: "Voltar",
                funcao: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
