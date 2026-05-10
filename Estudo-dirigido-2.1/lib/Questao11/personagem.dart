class Personagem {
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

  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nivel: $nivel');
  }

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

class Combatente extends Personagem {
  int forca;
  Combatente(String nome, int vida, int nivel, this.forca)
    : super(nome, vida, nivel);
  void atacar(Personagem alvo) {
    print('$nome atacou ${alvo.nome}');

    alvo.receberDano(forca);
  }
}

class Guerreiro extends Combatente {
  String armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
    : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Qual sua Armadura: $armadura');
  }

  void ataquePesado(Personagem alvo) {
    int dano = forca * 2;
    print('$nome usa ataque ataquePesado!');
    alvo.receberDano(dano);
  }
}

class Arqueiro extends Combatente {
  int QTD_Flexas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.QTD_Flexas)
    : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Quantidade de Flexas: $QTD_Flexas');
  }

  @override
  void atacar(Personagem alvo) {
    if (QTD_Flexas > 0) {
      QTD_Flexas--;
      print('$nome disparou uma flexa!');
      alvo.receberDano(forca);
    } else {
      print('$nome não possui flecha!');
    }
  }
}

//Mago
//Crie uma classe Mago, que herda de Combatente.
//O mago deve possuir mana.
//Além do ataque comum herdado de combatente, o mago deve conseguir lançar magia.
//A magia só pode ser lançada se o mago tiver pelo menos 10 pontos de mana.
//Ao lançar magia, o mago causa dano igual à sua força somada a 15 e consome 10 pontos de mana.

class Mago extends Combatente {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
    : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Quantidade de Mana: $mana');
  }

  @override
  void atacar(Personagem alvo) {
    if (mana >= 10) {
      mana -= 10;

      int danoMagico = forca + 15;

      print('$nome usou Tempestade de Gelo!');

      alvo.receberDano(danoMagico);
    } else {
      print('$nome Ataque normal!');
      alvo.receberDano(forca);
    }
  }
}

//Inimigo
//Agora crie uma classe Inimigo, que também herda de Personagem.
//Essa classe representa personagens inimigos e deve possuir uma recompensa.
//Todo inimigo deve conseguir exibir o valor da recompensa concedida quando for derrotado.
class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
    : super(nome, vida, nivel);

  void exibriRecompensa() {
    print(
      'Procura-se vivo ou morto: $nome | Recompensa: R\$ ${recompensa.toStringAsFixed(2)}',
    );
  }
}

//Goblin
//A partir de Inimigo, crie uma classe Goblin. O goblin deve possuir velocidade.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua velocidade.
class Globin extends Inimigo {
  int velocidade;

  Globin(String nome, int vida, int nivel, double recompensa, this.velocidade)
    : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();

    print('Velocidade: $velocidade');
  }
}

//Dragao
//Por fim, crie uma classe Dragao, que herda de Inimigo. O dragão deve possuir poder de fogo.
//Ele deve conseguir soltar fogo em outro personagem, causando dano igual ao seu poder de fogo.
class Dragao extends Inimigo {
  int fogo;

  Dragao(String nome, int vida, int nivel, double recompensa, this.fogo)
    : super(nome, vida, nivel, recompensa);
  
  void soltarFogo(Personagem alvo) {

    print('$nome lançou chamas negras!');

    alvo.receberDano(fogo);
  }
}


  

