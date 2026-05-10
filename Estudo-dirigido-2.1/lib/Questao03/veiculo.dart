//Questão 3
//Crie uma classe Veiculo com marca, modelo e ano. Ela deve possuir um método exibirFicha().
//Depois, crie uma classe Carro que herda de Veiculo e adiciona quantidadePortas. Sobrescreva o
//método exibirFicha() para exibir todos os dados do carro

class Veiculo {
  String marca;
  String modelo;
  int ano;

  //contrutor do veiculo

  Veiculo(this.marca, this.modelo, this.ano);
  void exibirFicha() {
    print('Marca,$marca');
    print('Modelo,$modelo');
    print('Ano,$ano');
  }
}

class Carro extends Veiculo {
  String Qtds_de_portas;

  Carro(String marca, String modelo, int ano, this.Qtds_de_portas)
    : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Quantidade de Portas: $Qtds_de_portas');
  }
}
