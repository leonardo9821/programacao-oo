//Questão 7
//Crie uma classe Animal com nome e método emitirSom(). 
//Depois, crie uma classe Cachorro que herda de Animal e sobrescreve emitirSom() para mostrar "au au" específica. 
//Faça o mesmo para classe Gato e Passaro. 
//No main(), crie um objeto para cada animal e mande todos emitirem som.

class Animal{

  String nome;

  Animal(this.nome);

  void emitirSom(){
    print('O animal faz um som');
    }
}

class Cachorro extends Animal{
  

    Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
  super.emitirSom();
  print('Latido: au au');
}


}


class Gato extends Animal{

    Gato(String nome) : super(nome);

    @override
    void emitirSom() {
    super.emitirSom();
print('Miado: miau');
}
}

class Passaro extends Animal{

Passaro(String nome) : super(nome);

@override
void emitirSom() {
super.emitirSom();
print('Piado: piu piu');
}
}