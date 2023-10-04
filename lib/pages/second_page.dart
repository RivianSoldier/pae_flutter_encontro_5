import 'package:encontro_5/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final nome;
  final tipo;
  final link;
  const SecondPage(
      {super.key, required this.nome, required this.tipo, required this.link});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nome:' + nome),
          Text('Tipo:' + tipo),
          Text('Url:' +link),
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
