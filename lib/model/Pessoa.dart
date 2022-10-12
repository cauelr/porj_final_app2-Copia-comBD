class Pessoa {
  String id = "";
  String nome;
  String cpf;
  String sexo;
  String descricao;

  Pessoa(this.id, this.nome, this.cpf, this.sexo, this.descricao);

  @override
  String toString() {
    return "$id | $nome | $cpf | $sexo | $descricao";
  }

  String getDescricao() {
    return descricao;
  }

  String getSexo() {
    return sexo;
  }

  String getId() {
    return id;
  }

  String getNome() {
    return nome;
  }

  String getCpf() {
    return cpf;
  }
}
