import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Container(
            margin: EdgeInsets.all(50),
            width: 300,
            height: 300,
            child: Image.asset('assets/images/img-inicio.png')),
      ),
      Center(
        child: Text(
          "Bem - Vindo",
          textScaleFactor: 3,
        ),
      )
    ]);
  }
}
