//Crie uma classe abstrata Animal com o atributo nome e o método abstrato emitirSom().V
//Depois, crie as classes Cachorro, Gato e Passaro, todas herdando de Animal.
//Cada classe deve sobrescrever emitirSom() com uma mensagem específica:
//- Cachorro: “au au”
//- Gato: “miau”
//- Passaro: “piu piu”
abstract class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print('O animal faz um som');
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('$nome lati: au au');
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('$nome mia: miau');
  }
}

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('$nome pia : piu piu');
  }
}

//Crie também uma nova classe filha chamada Vaca, que herda de Animal e sobrescreve emitir Som() com a mensagem “muuu”. 
class Vaca extends Animal{
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('$nome mugi: Muuu');
  }
}