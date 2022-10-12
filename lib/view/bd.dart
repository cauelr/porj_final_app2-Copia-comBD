import 'package:http/http.dart' as http;
import 'package:porj_final_app2/model/Pessoa.dart';
import 'dart:convert';

void excluirBanco(String n) async {
  var request =
      http.Request('POST', Uri.parse("http://localhost/flutter/excluir.php"));

  request.bodyFields = {"id": n};

  http.StreamedResponse response = await request.send();
}

void inserirBanco(
    String nome, String cpf, String sexo, String descricao) async {
  var request = http.Request(
      'POST', Uri.parse("http://localhost/flutter/inserir_ocorrencias.php"));
  request.bodyFields = {
    "nome": nome,
    "sexo": sexo,
    "cpf": cpf,
    "descricao": descricao,
  };
  http.StreamedResponse response = await request.send();
  pessoasNoBanco();
}

pessoasNoBanco() async {
  var response =
      await http.get(Uri.parse("http://localhost/flutter/consultar.php"));
  var dados = jsonDecode(response.body);
  List<Pessoa> p = [];

  var dado1 = dados[0];

  for (Map x in dados) {
    var novaPessoa = Pessoa(
      x['id'].toString(),
      x['nome'],
      x['sexo'],
      x['cpf'],
      x['descricao'],
    );
    p.add(novaPessoa);
  }
  return p;
}
