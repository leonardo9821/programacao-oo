class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {
    if (nome.isEmpty) {
      throw Exception('Nome não pode ser vazio');
    }

    if (idade <= 0) {
      throw Exception('Idade inválida');
    }
  }

  void exibirDados() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('---');
  }
}

void main() {
  Pessoa p1 = Pessoa('Leo', 21);
  Pessoa p2 = Pessoa('Ana', 30);
  Pessoa p3 = Pessoa('João', 18);

  p1.exibirDados();
  p2.exibirDados();
  p3.exibirDados();
}





