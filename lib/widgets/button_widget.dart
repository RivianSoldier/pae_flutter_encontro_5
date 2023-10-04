import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Function() funcao;
  const ButtonWidget({super.key, required this.text, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funcao,
      child: Text(text),
    );
  }
}
