import 'package:flutter/material.dart';
import 'package:porj_final_app2/view/bd.dart';
import '../model/Componentes.dart';
import '../model/Pessoa.dart';

class ListaOcorrencias extends StatefulWidget {
  _ListaOcorrencias createState() => _ListaOcorrencias();
}

class _ListaOcorrencias extends State<ListaOcorrencias> {
  static List<Pessoa> getOcorrencia = [];

  @override
  void initState() {
    // TODO: implement initState
    testando() async {
      getOcorrencia = await pessoasNoBanco();
    }

    testando();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Celula(
                text: "Nome",
                tamanho: 120,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
            Celula(
                text: "CPF",
                tamanho: 120,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
            Celula(
                text: "Sexo",
                tamanho: 120,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
            Celula(
                text: "Descrição",
                tamanho: 240,
                cor: Color.fromARGB(255, 0, 63, 171),
                textColor: Colors.amber),
          ],
        ),
        for (Pessoa pessoa in getOcorrencia)
          Row(
            children: [
              Container(
                color: Colors.grey,
                child: Text(pessoa.getNome()),
                width: 200,
              ),
              Container(
                child: Text(pessoa.getCpf()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pessoa.getSexo()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                child: Text(pessoa.getDescricao()),
                color: Colors.grey,
                width: 200,
              ),
              Container(
                  child: TextButton(
                      onPressed: (() {
                        excluirBanco(pessoa.getId());
                        setState(() {
                          pessoasNoBanco();
                        });
                      }),
                      child: Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 20,
                      )),
                  width: 100),
            ],
          )
      ],
    );
  }
}
