//Crie uma classe abstrata Veiculo com os atributos marca, modelo e ano.
//A classe deve possuir construtor e declarar o método abstrato exibirFicha().
//Depois, crie a classe Carro, que herda de Veiculo e adiciona o atributo quantidadePortas.
//Sobrescreva exibirFicha() para mostrar todos os dados do carro.

abstract class Veiculo {
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

//Crie também uma nova classe filha chamada Moto, que herda de Veiculo e adiciona o atributo cilindradas.
//Sobrescreva exibirFicha() para mostrar todos os dados da moto.
//No main(), crie um carro e uma moto. Chame exibirFicha() para os dois objetos
class Moto extends Veiculo {
  int QTD_cilindradas;

  Moto(String marca, String modelo, int ano, this.QTD_cilindradas)
    : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Quantidade de celindradas da moto : $QTD_cilindradas');
  }
}
