import 'package:flutter/material.dart';

class Conteiner extends StatelessWidget {
  const Conteiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 156,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Color.fromARGB(255, 196, 194, 194), blurRadius: 7),
        ],
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
    );
  }
}
