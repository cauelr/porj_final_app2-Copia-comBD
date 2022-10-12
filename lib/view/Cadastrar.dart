import 'package:flutter/material.dart';
import 'package:porj_final_app2/model/Pessoa.dart';
import 'package:porj_final_app2/view/bd.dart';
import '../model/Componentes.dart';

class Cadastrar extends StatefulWidget {
  _Cadastrar createState() => _Cadastrar();
}

class _Cadastrar extends State<Cadastrar> {
  TextEditingController nome = TextEditingController();
  TextEditingController cpf = TextEditingController();
  TextEditingController sexo = TextEditingController();
  TextEditingController descricao = TextEditingController();
  TextEditingController img = TextEditingController();

  Widget build(BuildContext context) {
    return Column(
      children: [
        Campos(controller: nome, label: "Nome"),
        Campos(controller: cpf, label: "CPF"),
        Campos(controller: sexo, label: "Sexo"),
        Campos(controller: descricao, label: "Descrição"),
        Button(
            onPressed: () {
              setState(() {
                inserirBanco(nome.text, cpf.text, sexo.text, descricao.text);

                nome.text = "";
                cpf.text = "";
                sexo.text = "";
                descricao.text = "";
                img.text = "";
              });
            },
            label: "Registrar Ocorrência",
            btnColor: Colors.blue,
            textColor: Colors.amber)
      ],
    );
  }
}
