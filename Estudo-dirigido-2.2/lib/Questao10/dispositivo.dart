//Crie uma classe Dispositivo com os atributos marca e modelo. V

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  void metodoLigar() {
    print('Marca do Smartphone, $marca');
    print('Modelo do Smartphone, $modelo');
  }
}

//Depois, crie uma interface chamada Ligavel, com os métodos ligar() e desligar().

abstract class Ligavel {
  void ligar();
  void desligar();
}

//Crie a classe Smartphone, que herda de Dispositivo, adiciona o atributo sistemaOperacional e implementa Ligavel.
//No método ligar(), mostre uma mensagem específica informando que o smartphone está ligando.
//No método desligar(), mostre uma mensagem informando que o smartphone está desligando.
//Crie também a classe Notebook, que herda de Dispositivo e implementa Ligavel.
//Ela deve possuir o atributo memoriaRam.
class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional)
    : super(marca, modelo);

  @override
  void ligar() {
    print('Smartphone ligando...');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Sistema Operacional: $sistemaOperacional');
  }

  @override
  void desligar() {
    print('Smartphone desligando...');
  }
}
//Crie também a classe Notebook, que herda de Dispositivo e implementa Ligavel.
//Ela deve possuir o atributo memoriaRam.

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam) : super(marca, modelo);
  @override
  void ligar() {
    print('Notebook ligando...');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Memória RAM: ${memoriaRam}GB DDR4');
  }

  @override
  void desligar() {
    print('Notebook desligando...');
  }
}
