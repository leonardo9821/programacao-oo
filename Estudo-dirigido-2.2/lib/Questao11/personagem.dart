//Classe abstrata Personagem v
//Crie uma classe abstrata Personagem para representar qualquer personagem do sistema.v
//Essa classe deve possuir nome, vida e nível. v
//O nome não pode ser vazio. A vida não pode ser negativa.v
//O nível deve ser maior ou igual a 1. v
//A classe deve permitir que qualquer personagem receba dano e verifique se ainda está vivo.v
//Ao receber dano, a vida deve ser reduzida, mas nunca pode ficar abaixo de zero. v
//Um personagem está vivo quando sua vida é maior que zero. v
//A classe Personagem também deve obrigar suas classes filhas a implementarem uma forma própria de exibir o status do personagem.v
abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw Exception('Nome não pode ser vazio');
    }

    if (vida < 0) {
      throw Exception('Vida não pode ser negativa');
    }

    if (nivel < 1) {
      throw Exception('Nivel deve ser maior ou igual a 1');
    }
  }

  void exibirStatus();

  void receberDano(int dano) {
    vida -= dano;

    if (vida < 0) {
      vida = 0;
    }

    print('$nome recebeu $dano de dano');
  }

  bool estaVivo() {
    return vida > 0;
  }
}

//Interface Atacavel V
//Crie uma interface chamada Atacavel. V
//Essa interface deve definir que uma classe atacável precisa possuir um comportamento de ataque contra outro personagem.V
//Toda classe que implementar essa interface deverá obrigatoriamente saber atacar um personagem.
abstract class Atacavel {
  void atacar(Personagem alvo);
}

//Classe abstrata Combatente v
//Crie uma classe abstrata Combatente, que representa personagens capazes de combater.v
//Essa classe deve herdar de Personagem e implementar a interface Atacavel.
//Além dos dados herdados de Personagem, a classe Combatente deve possuir a força do combatente.
//Todo combatente deve ser obrigado a atacar outro personagem, mas a forma exata do ataque deverá ser definida pelas classes filhas.
abstract class Combatente extends Personagem implements Atacavel {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca)
    : super(nome, vida, nivel);

  @override
  void atacar(Personagem alvo) {
    print('$nome atacou ${alvo.nome}');
    alvo.receberDano(calcularDano());
  }

  int calcularDano();
}

//Classe Guerreiro v
//Crie uma classe Guerreiro, que herda de Combatente. v
//O guerreiro deve possuir armadura. v
//O guerreiro deve implementar o ataque comum, causando dano baseado em sua força.
//Além disso, o guerreiro deve possuir um ataque pesado, que causa o dobro da força como dano. v
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua armadura.v
class Guerreiro extends Combatente {
  String armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
    : super(nome, vida, nivel, forca);

  @override
  int calcularDano() {
    return forca;
  }

  void ataqueComun(Personagem alvo) {
    print('$nome usa ataque comum!');
    alvo.receberDano(calcularDano());
  }

  void ataquePesado(Personagem alvo) {
    print('$nome usa ataque pesado!');
    alvo.receberDano(calcularDano() * 2);
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Armadura: $armadura');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

//Classe Arqueiro v
//Crie uma classe Arqueiro, que herda de Combatente. v
//O arqueiro deve possuir uma quantidade de flechas. v
//Ao atacar, o arqueiro só pode realizar o ataque se tiver pelo menos uma flecha disponível. v
//Cada ataque consome uma flecha. v
//Caso não tenha flechas, deve ser exibida uma mensagem informando que o arqueiro não pode atacar.v
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar a quantidade de flechas.v
class Arqueiro extends Combatente {
  int qtdFlechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.qtdFlechas)
    : super(nome, vida, nivel, forca);

  @override
  int calcularDano() {
    return forca;
  }

  @override
  void atacar(Personagem alvo) {
    if (qtdFlechas <= 0) {
      print('$nome não possui flechas e não pode atacar!');
      return;
    }

    qtdFlechas--;
    print('$nome disparou uma flecha!');
    super.atacar(alvo);
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Flechas: $qtdFlechas');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

//Interface Magico
//Crie uma interface chamada Magico.
//Essa interface deve definir que uma classe mágica precisa possuir um comportamento de lançar magia contra outro personagem.
//Toda classe que implementar essa interface deverá obrigatoriamente saber lançar magia.
abstract class Magico {
  void magia(Personagem alvo);
}
//Classe Mago v
//Crie uma classe Mago, que herda de Combatente e implementa a interface Magico. v
//O mago deve possuir mana.v
// O mago deve implementar o ataque comum, causando dano baseado em sua força.
//Além do ataque comum, o mago deve conseguir lançar magia.
//A magia só pode ser lançada se o mago tiver pelo menos 10 pontos de mana. Ao lançar magia, o mago causa dano igual à sua força somada a 15 e consome 10 pontos de mana.
//Caso não tenha mana suficiente, deve ser exibida uma mensagem informando que o mago não pode lançar magia.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua mana.

class Mago extends Combatente implements Magico {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
    : super(nome, vida, nivel, forca);

  @override
  int calcularDano() {
    return forca;
  }

  @override
  void atacar(Personagem alvo) {
    print('$nome usa ataque comum!');
    alvo.receberDano(calcularDano());
  }

  @override
  void magia(Personagem alvo) {
    if (mana < 10) {
      print('$nome não tem mana suficiente para lançar magia!');
      return;
    }

    mana -= 10;

    int danoMagico = forca + 15;

    print('$nome lançou uma magia de tempestade de gelo!');
    alvo.receberDano(danoMagico);
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Mana: $mana');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

//Classe abstrata Inimigo v
//Crie uma classe abstrata Inimigo, que também herda de Personagem. v
//Essa classe representa personagens inimigos e deve possuir uma recompensa.v
//Todo inimigo deve ser obrigado a exibir o valor da recompensa concedida quando for derrotado.v

abstract class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
    : super(nome, vida, nivel);

  void exibirRecompensa();
}

//Classe Goblin v
//Crie uma classe Goblin, que herda de Inimigo.v
//O goblin deve possuir velocidade.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua velocidade.
//O goblin também deve implementar a exibição da recompensa.

class Globin extends Inimigo {
  int velocidade;

  Globin(String nome, int vida, int nivel, double recompensa, this.velocidade)
    : super(nome, vida, nivel, recompensa);

  @override
  void exibirRecompensa() {
    print(
      'Globlin derrotado! Recompensa: R\$ ${recompensa.toStringAsFixed(2)}',
    );
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Recompensa: R\$ ${recompensa.toStringAsFixed(2)}');
    print('Velocidade: $velocidade');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

//Interface Flamejante
//Crie uma interface chamada Flamejante.
//Essa interface deve definir que uma classe flamejante precisa possuir um comportamento de soltar fogo contra outro personagem.
//Toda classe que implementar essa interface deverá obrigatoriamente saber soltar fogo.

abstract class Flamejante {
  void chamas(Personagem alvo);
}

//Classe Dragao v
//Crie uma classe Dragao, que herda de Inimigo e implementa a interface Flamejante.v
//O dragão deve possuir poder de fogo. Ele deve conseguir soltar fogo em outro personagem, causando dano igual ao seu poder de fogo.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar seu poder de fogo.
//O dragão também deve implementar a exibi-ção da recompensa.

class Dragao extends Inimigo implements Flamejante {
  int fogo;

  Dragao(String nome, int vida, int nivel, double recompensa, this.fogo)
    : super(nome, vida, nivel, recompensa);

 @override
  void chamas(Personagem alvo) {
    print('$nome soltou chamas negras em ${alvo.nome}!');
    alvo.receberDano(fogo);
  }

  @override
  void exibirRecompensa() {
    print(
      'Dragão derrotado! Recompensa: R\$ ${recompensa.toStringAsFixed(2)}',
    );
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Recompensa: R\$ ${recompensa.toStringAsFixed(2)}');
    print('Poder de fogo: $fogo');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}
