//Aqui esta a classe produto "nome,preço"
class Produto {
  String nome;
  double preco;
  //Aqui tem o construtor de produto
  Produto(this.nome, this.preco);
  // Aqui é uma forma de exibir os dados da classe produto
  void exibir() {
    print('Nome: $nome');
    print('Preço: R\$ $preco');
  }
}

//Aqui esta a classe produto perecivel que herda as caracteristicas de "produto" atraves de "extends" e adiciona o atributo dataValidade
class ProdutoPerecivel extends Produto {
  String dataValidade;
  ProdutoPerecivel(String nome, double preco, this.dataValidade)
    : super(nome, preco);
  // Aqui atraves do override vai sobrescrever o metodo exibir (void exibir())
  @override
  void exibir() {
    super.exibir();
    print('Data de validade: $dataValidade');
  }
}
