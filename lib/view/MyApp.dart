import 'package:porj_final_app2/model/Pessoa.dart';
import 'package:porj_final_app2/view/Cadastrar.dart';
import 'package:porj_final_app2/view/Inicio.dart';
import 'package:porj_final_app2/view/ListaOcorrencias.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<Pessoa> ocorrencia = <Pessoa>[];

  int iSelected = 0;

  void selectorScreen(int i) {
    setState(() {
      iSelected = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = <Widget>[Inicio(), Cadastrar(), ListaOcorrencias()];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                width: 50,
                height: 50,
                child: Image.asset('assets/images/logo.png')),
            Container(
              margin: EdgeInsets.all(10),
              child: Text("Boletim de Ocorrência"),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.amber),
        child: Center(
          child: screens.elementAt(iSelected),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicío"),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: "Cadastrar",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list_outlined),
              label: "Lista de Ocorrências"),
        ],
        onTap: selectorScreen,
        backgroundColor: Colors.black,
        unselectedItemColor: Color.fromARGB(255, 50, 110, 141),
        // selectedItemColor: Color.fromARGB(255, 0, 63, 171),
      ),
    );
  }
}
